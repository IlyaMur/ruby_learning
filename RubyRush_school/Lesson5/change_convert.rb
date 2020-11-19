puts 'Какая валюта у вас на руках?
  1. Рубли
  2. Доллары'


currency = ''

until currency == 1 || currency == 2
currency = STDIN.gets.to_i
end

puts 'Введите, пожалуйста, курс доллара:'
usd_c = gets.to_f

puts

if currency == 1
  puts 'ОК, переводим в доллары:
  Сколько рублей у Вас на руках?'
  rubles_amount = gets.to_f
  puts "Ваши запасы равны: #{(rubles_amount / usd_c).round(2)}$"
else
  puts 'ОК, переводим в рубли:
  Сколько долларов у Вас на руках?'
  dollars_amount = gets.to_f
  puts "Ваши запасы равны: #{(dollars_amount * usd_c).round(2)} рублей"
end