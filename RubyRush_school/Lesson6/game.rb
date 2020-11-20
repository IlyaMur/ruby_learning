arr = ['камень', 'ножницы', 'бумага']

puts 'Введите вариант:
0 - камень,
1 - ножницы,
2 - бумага'

num = gets.to_i

randomizer = rand 0..2

puts "Вы выбрали: #{arr[num]}"
puts "Компьютер выбрал: #{arr[randomizer]}"

if num == 0 && randomizer == 1
  puts 'Победил игрок'
elsif num == 0 && randomizer == 2
  puts 'Победил компьютер'
elsif num == 1 && randomizer == 0
  puts 'Победил компьютер'
elsif num == 1 && randomizer == 2
  puts 'Победил игрок'
elsif num == 2 && randomizer == 0
  puts 'Победил игрок'
elsif num == 2 && randomizer == 1
  puts 'Победил компьютер'
else
  puts 'Ничья!'
end

