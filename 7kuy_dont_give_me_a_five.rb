def dont_give_me_five(start_,end_)
  (start_..end_).to_a.reject { |n| n.to_s.include? "5" }.size
end
# Other interesting solutions:
# (start_..end_).count { |n| n.to_s !~ /5/ }
# (start_..end_).count{ |num| !num.to_s.chars.include?('5') }
# (start_..end_).count{|i| !i.to_s.include? '5'}
