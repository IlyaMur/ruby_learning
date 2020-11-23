puts 'Сколько вам звезд на погоды?'

stars_num = gets.to_i

def stars(num)
  puts '*' * num
end


puts 'Вот ваши звезды :)'
puts stars(stars_num)