filename = ARGV[0]

if filename == nil
  abort 'Укажите имя файла в качестве аргумента программы'
end

if File.exist?(filename)
  file = File.new(filename, 'r:UTF-8')
  lines = file.readlines
  file.close
else
  puts 'Файл не найден'
end

empty_lines_counter = 0
last_five_lines = []

lines.each_with_index do |line, index|
  if line.strip.empty?
    empty_lines_counter += 1
  end
  if lines.size - index <= 5
    last_five_lines << line
  end
end


puts "Открыли файл: #{filename}"
puts "Всего строк: #{lines.size}"
puts "Пустых строк: #{empty_lines_counter}"
puts 'Последние 5 строк файла:'
puts

for line in last_five_lines
  puts line
end
