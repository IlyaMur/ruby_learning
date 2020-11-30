arr = %w[cat dog tiger]

new = arr.select {|i| i.include?('t')}

puts new.to_s