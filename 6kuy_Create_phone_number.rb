=begin
Write a function that accepts an array of 10 integers (between 0 and 9),
that returns a string of those numbers in the form of a phone number.

Example
createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
# => returns "(123) 456-7890"

The returned format must be correct in order to complete this challenge.

Don't forget the space after the closing parentheses!
=end

def createPhoneNumber(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array
end

# Other solutions
# 1 =>
def createPhoneNumber(numbers)
  "(%d%d%d) %d%d%d-%d%d%d%d" % numbers
end

# 2. =>
def createPhoneNumber(numbers)
  numbers.join.gsub /(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3'
end

# 3. =>
def createPhoneNumber(numbers)
  n = numbers.join
  "(#{n[0..2]}) #{n[3..5]}-#{n[6..9]}"
end
