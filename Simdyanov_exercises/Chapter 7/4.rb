num1 = ARGV[0]
num2 = ARGV[1]
num3 = ARGV[2]

sum = 0
ARGV.each do |i|
  i = i.to_i
  sum += i
end

puts sum