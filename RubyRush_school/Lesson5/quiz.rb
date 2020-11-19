randomizer = rand 15

puts 'Я загадал число от 0 до 15. Попробуй отгадать с 3-ёх попыток:'

num = gets.to_i

if num == randomizer
  puts 'Угадал!'
  exit
elsif (randomizer - num).abs < 3
  puts 'Тепло!'
else
  puts 'Холодно!'
end

num = gets.to_i

if num == randomizer
  puts 'Угадал!'
  exit
elsif (randomizer - num).abs < 3
  puts 'Тепло!'
else
  puts 'Холодно!'
end

num = gets.to_i

if num == randomizer
  puts 'Угадал!'
  exit
elsif (randomizer - num).abs < 3
  puts 'Тепло!'
else
  puts 'Холодно!'
end

puts "Число было: #{randomizer}. К сожалению, ты не отгадал!"