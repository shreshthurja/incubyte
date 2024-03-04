# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe IncubytesController, type: :controller do
  describe "POST" do
    it 'should give you the exception of negative integer not allowed' do
      invalid_input = { "input": ["1,-4", "2", "3", "\n1,2", "1,4,5"]}
      post :add_string_numbers, body: invalid_input.to_json
      expect(JSON.parse(response.body)['result']).to eq("Negative integer not allowed")
    end

    it 'should give you the exception of invalid input' do
      invalid_input = { "input": ["1,\n","1", "2", "3", "\n1,2", "1,4,5"]}
      post :add_string_numbers, body: invalid_input.to_json
      expect(JSON.parse(response.body)['result']).to eq("Input not allowed. Invalid input: 1,\n")
    end

    it 'should give you the valid results' do
      valid_input = { "input": ["1", "2", "3", "\n1,2", "1,4,5"]}
      post :add_string_numbers, body: valid_input.to_json
      expect(JSON.parse(response.body)['result']).to eq([1, 2, 3, 3, 10])
    end

  end
end
