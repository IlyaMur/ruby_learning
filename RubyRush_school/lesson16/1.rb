puts 'введите ваш текст:'
current_path = File.dirname(__FILE__)
line = nil
all_lines = []


until line == 'end'
  line = STDIN.gets.encode('UTF-8').chomp
  all_lines << line
end

time = Time.now

file_name = time.strftime('%Y-%m-%d')
time_string = time.strftime('%H:%M')

separator = '*' * 80

file = File.new(current_path + '/' + "#{file_name}.txt", 'a:UTF-8')

file.print("\n\r" + time_string + "\n\r")

all_lines.pop

all_lines.each {|x| file.puts(x)}
file.puts separator
file.close

puts "ваша запись сохранена в файл #{file_name}.txt"