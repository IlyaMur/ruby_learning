current_path = './' + File.dirname(__FILE__)
file_path = current_path + '/database/list.txt'
file_path_d= current_path + '/database/list_with_description.txt'

if File.exist?(file_path)
  file = File.new(file_path, 'r:UTF-8')
  base = file.readlines
  file.close
else
  puts 'Файл базы не найден!'
end
if File.exist?(file_path_d)
  file = File.new(file_path_d, 'r:UTF-8')
  desc = file.readlines
  file.close
else
  puts 'Файл базы не найден!'
end

randomizer = rand 0..base.size-1


puts 'Сегодня Вам предлагается к просмотру фильм:'
puts base[randomizer]
puts desc[randomizer]
