array_to_invert = [1, 2, 3, 4, 5, 6, 7]
puts "Исходный массив: #{array_to_invert.to_s}"

new_array = []

array_to_invert.each do |i|

  new_array.unshift(i)
end

puts "Новый массив полученный от исходного: #{new_array.to_s}"