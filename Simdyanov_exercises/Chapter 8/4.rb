num = ARGV[0].to_i
if num == 0
  puts '!Integer'
end
puts 'positive 'if num.positive? 
puts 'negative 'if num.negative? 