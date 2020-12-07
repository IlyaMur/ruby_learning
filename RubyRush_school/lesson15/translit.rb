require 'translit'

str = gets.chomp

puts Translit.convert(str)
