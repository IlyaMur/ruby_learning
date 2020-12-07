current_path = File.dirname(__FILE__)
file_path_movie = 'database/list.txt'
file_path_description = '/database/list_with_description.txt'

if File.exist?(file_path_movie)
  file1 = File.new(file_path_movie, 'r:UTF-8')
  movies = file1.readlines
  file1.close
else
  puts 'Файл базы не найден!'
end

if File.exist?(file_path_description)
  file2 = File.new(file_path_description, 'r:UTF-8')
  descr = file2.readlines
  file2.close
else
  puts 'Файл базы не найден!'
end


randomizer = rand 0..3

puts 'Сегодня Вам предлагается к просмотру фильм:'
