arr = %w[cat dog tiger]

new = arr.map {|i| i.capitalize}

puts new.to_s
