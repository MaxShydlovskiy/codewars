def get_count(input_str)
  input_str.count('aeiou')
end

# Other interesting solutions:
# inputStr.scan(/[aeiou]/i).size
# inputStr.count 'aeiouAEIOU'
# return inputStr.downcase.scan(/[aeiou]/).size
