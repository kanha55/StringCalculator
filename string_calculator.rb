class StringCalculator
  def add(numbers)

    if numbers.empty?
      return 0
    elsif numbers.include?(',')
      numbers = numbers.split(',')
      return numbers.map(&:to_i).sum
    else
      return numbers.to_i
    end 

  end
end