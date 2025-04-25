class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers = split_by_comma(numbers)
    validate_numbers(numbers)
    numbers = split_by_newline(numbers)

    sum_numbers(numbers)
  end

  private

  def split_by_comma(numbers)
    numbers.split(',')
  end

  def validate_numbers(numbers)
    raise ArgumentError, "Input is invalid" if numbers.include?("\n")
  end

  def split_by_newline(numbers)
    numbers.flat_map { |number| number.split("\n") }
  end

  def sum_numbers(numbers)
    numbers.map(&:to_i).sum
  end
end