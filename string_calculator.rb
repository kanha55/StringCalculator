class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    numbers = numbers.split(',')
    
    raise ArgumentError, "Input is invalid" if numbers.include?("\n")
    
    numbers = numbers.flat_map { |number| number.split("\n") }

    numbers.map(&:to_i).sum
  end
end