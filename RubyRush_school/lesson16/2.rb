path = File.dirname(__FILE__)
file = File.new(path + '/' + 'hello.txt', 'w:UTF-8')

file.puts 'Hihi!'
file.close