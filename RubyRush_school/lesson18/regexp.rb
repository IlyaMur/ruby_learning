puts 'Введите e-mail:'
str = gets.chomp

if mail =~ /^[a-z\d_+.\-]+@[a-z\-]+(\.[a-z\-]+)*\.[a-z]+$/i
  puts 'Спасибо!'
else
  puts 'Какая-то фигня...
Это не почта'
end

