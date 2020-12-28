require 'json'

json_path = File.read(__dir__ + '/data/mendeleev.json')

json_hash = JSON.parse(json_path)

puts 'У нас есть:'
puts json_hash.keys.join(', ')
puts


puts 'Про какой элемент хотите узнать?'

element_key = gets.chomp



if json_hash.key?(element_key)

  element = json_hash[element_key]

  puts "Порядковый номер: #{element['number']}"
  puts "Название: #{element['name']}"
  puts "Первооткрыватель: #{element['discoverer']} (#{element['year']} г.)"
  puts "Плотность: #{element['density']} г/см³"
else
  puts 'Извините, про такой элемент мы еще не знаем.'
end

sleep 1