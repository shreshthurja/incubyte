class IncubytesController < ApplicationController
  def add_string_numbers
    input_data = JSON.parse(request.body.read)
    input_strings = input_data['input']
    result = StringCalculatorService.calculate_sum(input_strings)
    render json: { result: result }
  end
end
