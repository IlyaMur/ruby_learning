require 'rexml/document'

current_path = File.dirname(__FILE__)
file_name = current_path + '/card.xml'

abort 'Не вижу файл визитки!' unless File.exist?(file_name)

file = File.new(file_name)

doc = REXML::Document.new(file)

print doc.root.elements['fio/name'].text + ' '
puts doc.root.elements['fio/surname'].text

puts doc.root.elements['e-mail'].text
puts 'Навыки:'
puts doc.root.elements['skills'].text
