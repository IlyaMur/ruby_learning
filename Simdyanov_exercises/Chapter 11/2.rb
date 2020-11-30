arr = []
word = ''

until word == 'stop'
  word = gets.chomp
  arr << word
end

puts arr.to_s

arr.delete_if {|i| i.empty?}

puts arr.sort.uniq.to_s



