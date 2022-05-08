class String
  def toJadenCase
    self.split(/ |\_/).map(&:capitalize).join(" ")
  end
end

# Other interesting solutions:
# self.gsub(Regexp.union(/^./, /\s\w/), &:upcase)
# split(' ').map(&:capitalize) * ' '
#  self[0].upcase + each_byte.map(&:chr).each_cons(2).map { |l, r| l == " " ? r.upcase : r }.join
