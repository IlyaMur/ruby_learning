print 'Введите, пожалуйста, курс: '
usd_rate = gets.to_f
print 'Введите, пожалуйста, сколько у Вас рублей: '
rubles = gets.to_f
puts "Ваши запасы в долларах: $ #{(rubles / usd_rate).round(2)}"