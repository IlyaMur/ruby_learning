puts 'Врага какого пероснажа вы хотите узнать?'
hero_name = gets.chomp.downcase

case hero_name
when 'буратино', 'buratino'
  puts 'Карабас-Барабас'
when 'бэтмен', 'batman'
  puts 'Джокер'
when 'шерлок', 'sherlock'
  puts 'Профессор Мориарти'
else
  puts 'Не удалось найти врага'
end

