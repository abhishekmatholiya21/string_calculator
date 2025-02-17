# StringCalculator class acts as a calculator for adding numbers provided in a string format.
class StringCalculator
  def self.add(numbers)
    numbers.empty? ? 0 : numbers.to_i
  end
end
