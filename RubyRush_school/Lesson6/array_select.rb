cars = ['volga', 'zhigul', 'zaporozhec',
       'niva', 'chaika', 'moskvich',
       'honda', 'bmw', 'mazda', 'zhuk']

puts "У нас всего #{cars.size}. Вам какую?"
num = gets.to_i - 1

if num > (cars.size - 1) || num < 0
  puts 'Извините, машины с таким номером у нас нет :('
  exit
end

puts 'Поздравляем! Вы получили:'
puts cars[num]