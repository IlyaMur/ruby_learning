puts 'Введите число:'
num = gets.to_i

arr = [0, 1]

puts "#{num}-й член последовательности:"

until num == 0
  num -= 1
  arr << arr[-1] + arr[-2]
end

puts arr[-3]