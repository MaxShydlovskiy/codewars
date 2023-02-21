=begin

Complete the method/function so that it converts dash/underscore
delimited words into camel casing.
The first word within the output should be capitalized only
if the original word was capitalized (known as Upper Camel Case,
also often referred to as Pascal case). The next words should
be always capitalized.

Examples
"the-stealth-warrior" gets converted to "theStealthWarrior"
"The_Stealth_Warrior" gets converted to "TheStealthWarrior"

=end

def to_camel_case(str)
  str.gsub(/[_-](.)/) {"#{$1.upcase}"}
end

# Other interisting solutions
# 1 =>
def to_camel_case(str)
	str.gsub('_','-').split('-').each_with_index.map{ |x,i| i == 0 ? x : x.capitalize }.join
end

# 2 =>
def to_camel_case(str)
  str.gsub(/([\-_][a-zA-Z])/) do |m|
   m[1].upcase
  end
end

# 3 =>
def to_camel_case(string)
  # split into seperate words on underscore or dash
  words = string.split(/[_-]/)

  # create new array to put camelled words into
  camel_case_words = []

  # Iterate over words array.
  # First word gets passed into camel cased words array either capitalized or downcased
  # Subsequent words get capitalized
  words.each_with_index do |word, index|
    if index == 0 && ("A".."Z").include?(word.chars.first)
      camel_case_words << word.capitalize
    elsif index == 0
      camel_case_words << word.downcase
    else
      camel_case_words << word.capitalize
    end
  end

  # Return camel cased words in a string
  camel_case_words.join
end
