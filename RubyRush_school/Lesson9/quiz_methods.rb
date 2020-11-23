def random(num)
  if num == @randomizer
    puts 'Угадал!'
    exit
  elsif (@randomizer - num).abs < 3
    puts 'Тепло!'
  else
    puts 'Холодно!'
  end
end

@randomizer = rand 15

puts 'Я загадал число от 0 до 15. Попробуй отгадать с 3-ёх попыток:'
counter = 0

while counter < 3
  num = gets.to_i
  random(num)
  counter += 1
end

puts "Число было: #{@randomizer}. К сожалению, ты не отгадал!"






