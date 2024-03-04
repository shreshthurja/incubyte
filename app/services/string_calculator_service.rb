class StringCalculatorService
  def self.calculate_sum(input_strings)
    sum = []

    input_strings.each do |input_str|
      return "Input not allowed. Invalid input: #{input_str}" if input_str.include?(",\n")
       
      numbers = parse_numbers(input_str)
      return "Negative integer not allowed" if numbers.any?(&:negative?)

      total_sum = numbers.sum
      sum << total_sum
    end
    sum
  end

  def self.parse_numbers(input_str)
    input_str.split(/[\n , ;]/).map(&:to_i)
  end
end
