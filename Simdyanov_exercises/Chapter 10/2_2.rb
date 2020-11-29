arr = []

until arr.size == 10
  num = rand 0..99
  arr << num
end

max = arr[0]
min = arr[0]

arr.each do |i|
  if max < i
    max = i
  elsif min > i
    min = i
  end
end

puts arr.to_s
puts max
puts min
