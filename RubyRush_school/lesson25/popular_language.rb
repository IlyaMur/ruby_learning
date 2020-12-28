require 'json'

json_file = File.read(__dir__ + '/data/languages.json')

json_hash = JSON.parse(json_file)

array = []
json_hash.each {|_, v| array << v}

puts "Самый популярный язык: #{json_hash.key(array.sort.reverse.first)}"

array.sort.reverse.each_with_index do |v, index|
  puts "#{index + 1}. #{json_hash.key(v)}: #{v}"
end
