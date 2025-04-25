class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers, delimiter = extract_delimiter(numbers)

    numbers = split_by_delimiter(numbers, delimiter)

    validate_numbers(numbers)
    numbers = split_by_newline(numbers)

    sum_numbers(numbers)
  end

  private

  def extract_delimiter(numbers)
    if numbers.start_with?('//')
      delimiter, numbers = numbers.split("\n")
      delimiter = delimiter[2..-1]
    else
      delimiter = ','
    end
    [numbers, delimiter]
  end
  
  def split_by_delimiter(numbers, delimiter)
    numbers.split(delimiter)
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