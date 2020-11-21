flag = 0
max = ARGV[0].to_i

ARGV.each do |i|
  if (i.to_i != 0) && (i.to_i.kind_of? Integer)
    flag += 1
  end
  max = i.to_i > max ? i.to_i : max
end

puts 'All are integers' if flag == ARGV.size
puts max 




