require 'rexml/document'
require 'date'

#questions

puts 'Какое у вас желание?'
wish_text = gets.chomp

puts 'К какому числу его выполнить?
Запишите в формате: ДД.ММ.ГГГГ, пустое поле - сегодняшняя дата.'
wish_date_input = gets.chomp
wish_date = ''
#проверяем файл

file_path = File.dirname(__FILE__) + '/data/chest_of_wishes.xml'

unless File.exist?(file_path)
  File.open(file_path, 'w:UTF-8') do |f|
    f.puts "<?xml version='1.0' encoding='UTF-8'?>"
    f.puts '<wishes></wishes>'
  end
end



#парсим дату

if wish_date_input == ''
  wish_date = Date.today
else
  wish_date = Date.parse(wish_date_input)
end

#создаем объект парсера rexml

xml_file = File.read(file_path)
doc = REXML::Document.new(xml_file)

#добавляем тег

wish = doc.root.add_element 'wish', {'date' => wish_date.to_s}
wish.add_text(wish_text)

File.open(file_path, 'w') {|file| doc.write(file, 2)}

puts 'Желание в сундучке!'