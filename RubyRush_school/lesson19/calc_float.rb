puts 'Первое число:'
num1 = gets.to_f
puts 'Второе число:'
num2 = gets.to_f
puts 'Выберите операцию (+ - * /):'
operation = gets.chomp

case operation
when '+'
  puts "Результат:
#{num1 + num2}"
when '-'
  puts "Результат:
#{num1 - num2}"
when '*'
  puts "Результат:
#{num1 * num2}"
when '/'
  puts "Результат:
#{num1 / num2}"
else
  puts 'Нет такой операции'
end
