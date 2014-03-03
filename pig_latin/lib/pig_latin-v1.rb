def pig_latin (string)
  letter_arr = string.split('')
  original_letter_arr = string.split('')
  leading_consonants = []
  counter = 0
    
  original_letter_arr.each_with_index do |letter|
    if !['a','e','i','o','u','y'].include?(letter)
      if letter == 'q'
        leading_consonants << letter_arr.shift(1)
      end
      leading_consonants << letter_arr.shift
    elsif letter == 'y' && counter == 0
      leading_consonants << letter_arr.shift
    else
      break
    end
    counter += 1
  end

  letter_arr.join + leading_consonants.join + 'ay'

end

print "Please enter a word: "
user_input = gets.chomp
puts "The word in pig latin is: " + pig_latin(user_input)
