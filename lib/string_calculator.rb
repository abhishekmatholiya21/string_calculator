# StringCalculator class acts as a calculator for adding numbers provided in a string format.
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    numbers.split(',').map(&:to_i).sum
  end
end
