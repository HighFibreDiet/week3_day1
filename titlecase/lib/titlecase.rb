def titlecase(string)
  exempt_words = ['of','the','and','for','but','with','to']

  title_arr = string.split(' ')
  title_arr.each do |word|
    word.downcase!
    unless ['of','the','and','for','but','with','to'].include?(word)
     word.capitalize!
    end
  end
  title_arr.join(' ')[0].upcase + title_arr.join(' ')[1..-1]
end
