def num_to_word (number)
  basic_numbers = {'1' =>'one','2' =>'two','3' =>'three','4' =>'four','5' =>'five','6' =>'six','7' =>'seven','8' =>'eight','9' =>'nine'}
  teen_numbers = {'10' =>'ten','11' =>'eleven','12' =>'twelve','13' =>'thirteen','14' =>'fourteen','15' =>'fifteen','16' =>'sixteen','17' =>'seventeen','18' =>'eighteen',19 =>'nineteen'}
  decade_numbers = {'2' =>'twenty','3' =>'thirty','4' =>'forty','5' =>'fifty','6' =>'sixty','7' =>'seventy','8' =>'eighty','9' =>'ninety'}
  group_appendage = ['trillion','billion','million','thousand','']

  digits = number.to_s.split('').reverse
  digits_with_commas = []

  hundreds = []
  tens = []
  singles = []

  compiled_word = []

  zeros_to_add = 3 - (digits.length % 3);

  digits.each_index do |index|
    if (index + 1) % 3 == 0
      digits_with_commas << digits[index]
      digits_with_commas << ','
    else
      digits_with_commas << digits[index]
    end
  end

  zeros_to_add.times {digits_with_commas.push('0')}

  groups_of_three = digits_with_commas.reverse.join.split(',')

  while group_appendage.length > groups_of_three.length
      group_appendage.shift
  end

  groups_of_three.each do |group|
    cur_group = group.split('')
    cur_group.each.with_index do |digit, index|
      if index % 3 === 0
        hundreds << digit
      elsif index % 3 === 1
        tens << digit
      else
        singles << digit
      end
    end
  end

  groups_of_three.each_index do |index|
    if index != 0
      compiled_word << basic_numbers[hundreds[index]]
      compiled_word << 'hundred'
    end

    if tens[index] == '1'
      compiled_word << teen_numbers[tens[index]]
    else
      compiled_word << decade_numbers[tens[index]]
    end

    unless tens[index] == '1'
      compiled_word << basic_numbers[singles[index]]
    end
    compiled_word << group_appendage[index]
  end

  puts compiled_word.join(' ')



end



puts num_to_word(2426)
