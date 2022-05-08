def digitize(n)
  n.to_s.scan(/\d/).map {|i| i.to_i}.reverse()   # n.to_s.chars.reverse.map(&:to_i)
end                                              # n.to_s.chars.map(&:to_i).reverse
