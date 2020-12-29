require 'net/http'
require 'uri'
require 'rexml/document'

def weather(city)
CLOUDINESS = {-1 => 'Туман',
            0 => 'Ясно',
            1 => 'Малооблачно',
            2 => 'Облачно',
            3 => 'Пасмурно'}

uri = URI.parse('https://www.meteoservice.ru/en/export/gismeteo?point=31341')

response = Net::HTTP.get_response(uri)

doc = REXML::Document.new(response.body)

city_name = URI.decode_www_form(doc.root.elements['REPORT/TOWN'].attributes['sname'])

current_forecast = doc.root.elements['REPORT/TOWN'].elements.to_a[0]

min_temp = current_forecast.elements['TEMPERATURE'].attributes['min']
max_temp = current_forecast.elements['TEMPERATURE'].attributes['max']


wind_max = current_forecast.elements['WIND'].attributes['max']
wind_min = current_forecast.elements['WIND'].attributes['min']

wind_direction = current_forecast.elements['WIND'].attributes['direction']

cloudiness = current_forecast.elements['PHENOMENA'].attributes['cloudiness'].to_i

puts "#{city_name[0][0]}"
puts "Минимальная температура: #{min_temp}"
puts "Максимальная температура: #{max_temp}"

puts "Ветер максимум: #{wind_max} м/с"
puts "Ветер минимум: #{wind_min} м/с"
puts "Направление ветра: #{wind_direction}"


puts "Облачность: #{CLOUDINESS[cloudiness]}"
end



