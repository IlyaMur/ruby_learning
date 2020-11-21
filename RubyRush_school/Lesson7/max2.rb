arr = []

puts 'Какой длины будет массив случайных чисел?'

num = gets.to_i
i = 0

until arr.size == num
  i = rand 1..100
  arr << i
end

max = arr[0]
0.upto(arr.size - 1) do |i|
  if arr[i] > max
    max = i
  end
end

puts "Массив случайных чисел: #{arr.to_s}"
puts "Максимальный элемент массива: #{max}"