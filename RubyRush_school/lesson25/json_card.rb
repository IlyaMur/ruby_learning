require 'json'

file = File.read(__dir__ + '/data/card.json')

json_hash = JSON.parse(file)

json_hash.each do |v, k|
  puts "#{v} #{k}"
end


