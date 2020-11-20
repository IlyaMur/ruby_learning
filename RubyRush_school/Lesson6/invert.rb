arr = []

i = 1
1.upto(5) do
  arr << i
  i += 1
end

puts arr.to_s
arr.size.downto(1) {|i| print "#{i} "}
puts arr.to_s

