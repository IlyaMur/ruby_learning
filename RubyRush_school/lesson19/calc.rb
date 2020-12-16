puts 'Первое число:'
num1 = gets.to_i
puts 'Второе число:'
num2 = gets.to_i
puts 'Выберите операцию (+ - * /):'
operation = gets.chomp

begin
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
end

rescue ZeroDivisionError
  puts 'На ноль делить нельзя'
end