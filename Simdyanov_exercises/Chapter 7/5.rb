require 'date'

year = ARGV[0]
month = ARGV[1]
day = ARGV[2]

full_date = day + "/" + month + "/" + year
birthday = Date.parse(full_date)

puts (Date.today - birthday).to_i

