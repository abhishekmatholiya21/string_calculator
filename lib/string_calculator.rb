# StringCalculator class acts as a calculator for adding numbers provided in a string format.
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    numbers_arr = parse_numbers(numbers)

    numbers_arr.map(&:to_i).sum
  end

  private

    # Parses the input string to separate numbers based on the delimiter.
    def self.parse_numbers(numbers)
      if numbers.start_with?("//")
        delimiter, numbers = numbers[2], numbers.split("\n", 2).last
        numbers.split(delimiter)
      else
        numbers.gsub("\n", ",").split(',')
      end
    end
end
