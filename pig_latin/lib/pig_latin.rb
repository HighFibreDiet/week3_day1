def pig_latin (string)
  regex_index= /a|e|i|o|y|(?<!q)u/i =~ string
  string.slice(regex_index,string.length-regex_index) + string.slice(0, regex_index) + 'ay'
end

puts pig_latin("bug")
puts pig_latin("queen")
puts pig_latin("array")
puts pig_latin("its")
