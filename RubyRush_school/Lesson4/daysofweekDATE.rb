time = Time.now

if time.wday == 6 || time.wday == 0
  puts 'Выходной'
else
  puts 'Не выходной'
end
