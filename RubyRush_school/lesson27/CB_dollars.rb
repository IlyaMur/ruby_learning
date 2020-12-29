require 'uri'
require 'net/http'
require 'rexml/document'


uri = URI.parse('http://www.cbr.ru/scripts/XML_daily.asp')

response = Net::HTTP.get_response(uri)

doc = REXML::Document.new(response.body)


doc.root.elements.each do |i|
  if i.attributes['ID'] == 'R01235'
    puts "Курс доллара США: #{i.elements['Value'].text} руб."
  end
  if i.attributes['ID'] == 'R01239'
     puts "Курс евро: #{i.elements['Value'].text} руб."
  end
end

