temp = ARGV[0]
season = ARGV[1]

if temp.to_i >= 22 && temp.to_i <= 30
  puts 'Скорее идите в парк, соловьи поют!'
  exit
end

if temp == nil && season == nil
  puts 'Какая сейчас температура?'
  temp = STDIN.gets.to_i
  if temp >= 22 && temp <= 30
      puts 'Скорее идите в парк, соловьи поют!'
      exit
  elsif temp < 15 || temp >= 35
    puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
    exit
  else
  puts 'Какое сейчас время года?
  0 - весна,
  1 - лето,
  2 - осень,
  3 - зима.'
  season = STDIN.gets.to_i
  end
end

if season == nil
  puts 'Какое сейчас время года?
  0 - весна,
  1 - лето,
  2 - осень,
  3 - зима.'
  season = STDIN.gets.to_i
end


if temp.to_i >= 15 && temp.to_i <= 35 && season.to_i == 1
  puts 'Скорее идите в парк, соловьи поют!'
elsif temp.to_i >= 22 && temp.to_i <= 30
  puts 'Скорее идите в парк, соловьи поют!'
else
  puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
end