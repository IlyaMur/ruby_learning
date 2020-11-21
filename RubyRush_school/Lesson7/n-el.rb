puts 'Введите N'

num = gets.to_i

array = []

i = 0
sum = 0
until i == num
  i += 1
  sum += i
  array << i
end

puts array.to_s
puts "Сумма чисел: #{sum}"