require 'rexml/document'
require 'date'
include REXML

puts 'В этом сундуке хранятся Ваши желания!'
puts 'Чего бы вы хотели?'

wish_text = gets.chomp

puts 'До какого числа вы хотите осуществить это желание?
(укажите дату в формате ДД.ММ.ГГГГ)'
date_input = gets.chomp
wish_date = nil

if date_input == ''
  wish_date = Date.today
else
  wish_date = Date.parse(date_input)
end



current_path = File.dirname(__FILE__)
file_name = current_path + '/wishes.xml'
file = File.open(file_name, 'w+:UTF-8')

doc = REXML::Document.new(file)



wishes = Element.new('Wishes')
wish = wishes.add_element 'Wish', {'date' => wish_date.to_s}

wish.text = wish_text
doc.write(file, 2)
file.close
puts 'saved'

