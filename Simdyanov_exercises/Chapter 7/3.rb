num = ARGV[0]
mult = 1

1.upto(num.to_i) do |i|
  mult *= i
end
puts mult



