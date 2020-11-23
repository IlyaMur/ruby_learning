first = 0
second = 1

num = gets.to_i

(num - 2).times do 
  first, second = second, first + second
end

puts second