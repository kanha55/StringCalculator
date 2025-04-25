
class StringCalculator
  def add(numbers)

    if numbers.empty?
      return 0
    elsif numbers.include?(',')
      numbers = numbers.split(',')
      return numbers[0].to_i + numbers[1].to_i
    else
      return numbers.to_i
    end 
     
  end
end