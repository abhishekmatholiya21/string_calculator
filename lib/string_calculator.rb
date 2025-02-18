# StringCalculator class acts as a calculator for adding numbers provided in a string format.
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    only_integers = parse_numbers(numbers)
    validate_negatives(only_integers)

    only_integers.map(&:to_i).sum
  end

  private

    # Parses the input string to separate numbers based on the delimiter.
    def self.parse_numbers(numbers)
      if numbers.start_with?("//")
        numbers = numbers.split("\n", 2).last
      end
      numbers.scan(/-?\d+/)
    end

    # Validates the array of numbers to ensure no negative numbers are present.
    def self.validate_negatives(only_integers)
      negatives = only_integers.select { |n| n.to_i.negative? }
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?
    end
end
