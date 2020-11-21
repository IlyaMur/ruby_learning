puts 'Какой длины будет массив случайных чисел?'
num = gets.to_i

arr = Array.new(num) {rand 1..100}

puts arr.to_s
puts arr.max