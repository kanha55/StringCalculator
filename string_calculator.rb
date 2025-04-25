
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.include?(',')
      numbers = numbers.split(',')
      return numbers[0].to_i + numbers[1].to_i
    end  

    return numbers.to_i
  end
end