def delete_nth(order,max_e)
  res = []
  order.each { |num| res << num unless res.count(num) == max_e }
  res
end

# Other solutions
# 1. =>

def delete_nth(order,max_e)
  obj = {}
  qwe = order.select do |i| obj[i] = (obj[i] || 0)+1
    obj[i] <= max_e
  end
end

# 2. =>

def delete_nth(order, max_e)
  occurrences = Hash.new(0)
  order.reject { |item| (occurrences[item] += 1) > max_e }
end

# 3. =>

def delete_nth(order,max_e)
  order.each_with_object([]) { |x, a| a.push(x) unless a.count(x) >= max_e }
end
