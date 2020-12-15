path = File.dirname(__FILE__)
letters = []
counter = 0

if File.exists?(path + '/' + 'letters.txt')
  file = File.new(path + '/' + 'letters.txt', 'r:UTF-8')
  letters = file.readlines
  file.close
else
  puts 'Не вижу такого файла!'
end


letters.each do |w|
  if w.strip =~ /^\S{3}$/
    counter += 1
  end
end

puts "Количество слов из 3-ёх букв: #{counter}"


