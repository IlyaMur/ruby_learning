arr = []
word = ''

until word == 'stop'
  word = gets.chomp
  arr << word
end

puts arr.to_s


