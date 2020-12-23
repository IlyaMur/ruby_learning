require 'rexml/document'

file_path = File.dirname(__FILE__) + '/Data/html_card.html'

unless File.exist?(file_path)
  File.open(file_path, 'w:UTF-8') do |f|
    f.puts '<!DOCTYPE html>'
  end
end


html_file = File.read(file_path)
doc = REXML::Document.new(html_file)

doc.add_element 'html'
html_body = doc.root.add_element 'body'

html_h3 = html_body.add_element('h3').add_text('Визитка')
html_p1 = html_body.add_element('p').add_text('ФИ: Мур Илья')
html_p2 = html_body.add_element('p').add_text('e-mail: ilyam**@hotmail.com')
html_p3 = html_body.add_element('p').add_text('Навыки:')
html_ul = html_body.add_element('ul')
html_li1 = html_ul.add_element('li').add_text('Чтение электрических схем')
html_li2 = html_ul.add_element('li').add_text('Обслуживание энергетических установок')
html_li3 = html_ul.add_element('li').add_text('Хорошая устная и письменная речь')


File.open(file_path, 'w') {|file| doc.write(file, 2)}

puts 'ok'
sleep 1
