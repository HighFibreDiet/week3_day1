def fizzbuzz(number)
  result = []
  1.upto(number) do |n|
    if n % 3 == 0 && n % 5 == 0
      result.push('fizzbuzz')
    elsif n % 3 == 0
      result.push('fizz')
    elsif n % 5 == 0
      result.push('buzz')
    else
      result.push(n)
    end
  end
  result
end
