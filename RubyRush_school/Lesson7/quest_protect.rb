puts '.'
sleep 0.5
puts '.'
sleep 0.5
puts '.'
sleep 0.5
puts '*' * 80
puts 'Ты подошёл к столу, на нём лежали:
  1. Ложка
  2. Грязная тарелка
  3. Яблоко'
sleep 0.5
puts 'Что взять?'

give_things = 0

until give_things > 0 && give_things < 4
  give_things = gets.to_i
  puts 'Неверный ответ'
end

if give_things == 1
  puts 'Итак, ты взял ложку'
  sleep 0.5
  puts '.'
  sleep 0.5
  puts '.'
  sleep 0.5
  puts '.'
  puts
  puts 'Будем есть суп из той вонючей кастрюли?'
  puts 'y/n'
  eat = gets.chomp
  if eat.downcase == 'y'
    puts 'Первые несколько ложек пошли хорошо'
      sleep 0.5
      puts '.'
      sleep 0.5
      puts '.'
      sleep 0.5
      puts 'А дальше ты почувстсвал тошноту и упал...'
      puts '*' * 80
      puts 'GAME OVER'
      exit
    else
      puts 'Ты повертел ложку в руках,
      а потом пошёл спать'
        puts '*' * 80
        puts 'GAME OVER'
        exit
    end
elsif give_things == 2
  puts 'Ты взял и помыл тарелку
  а потом пошёл спать'
  puts '*' * 80
  puts 'GAME OVER'
  exit
elsif give_things == 3
  puts 'Ты подобрал яблоко и быстро откусил'
  sleep 1
  puts '.'
  sleep 1
  puts '.'
  sleep 1
  puts '.'
  puts 'Ничего интересного не произошло, ты пошёл спать'
  sleep 1
  puts '*' * 80
  puts 'GAME OVER'
  exit
end




