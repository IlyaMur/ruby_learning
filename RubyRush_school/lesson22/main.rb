require './lib/product'
require './lib/book'
require './lib/movie'
require './shelfreader.rb'
require 'rexml/document'



file_name = File.dirname(__FILE__) + '/data/shelf.xml'

abort 'Не вижу файла shelf.xml' unless File.exist?(file_name)

xml = File.read(file_name)
doc = REXML::Document.new(xml)


hash_books = Hash.new
hash_movies = Hash.new

r = doc.root

books = r.elements.find('books').first
movies = r.elements.find('movies').first


puts 'Что хотите добавить?'
puts'1: Фильм
2: Книга'

product = gets.to_i

case product
when 1
  puts 'Какое название фильма?'
  hash_movies[:text] = gets.chomp
  puts 'Какой режиссёр?'
  hash_movies[:director] = gets.chomp
  puts 'Какой год фильма?'
  hash_movies[:year] = gets.chomp
  puts 'Сколько товара осталось на складе?'
  hash_movies[:qnt] = gets.chomp
  puts 'Какая стоимость 1 шт. в рублях?'
  hash_movies[:price] = gets.chomp


  movie = movies.add_element 'movie', {
  'director' => hash_movies[:director],
  'year' => hash_movies[:year],
  'qnt' => hash_movies[:qnt],
  'price' => hash_movies[:price]}
  movie.text = hash_movies[:text]

when 2
  puts 'Какое название книги?'
  hash_books[:text] = gets.chomp
  puts 'Какой автор?'
  hash_books[:author] = gets.chomp
  puts 'Какой жанр книги?'
  hash_books[:genre] = gets.chomp
  puts 'Сколько товара осталось на складе?'
  hash_books[:qnt] = gets.chomp
  puts 'Какая стоимость 1 шт. в рублях?'
  hash_books[:price] = gets.chomp

  book = books.add_element 'book', {
  'author' => hash_books[:author],
  'genre' => hash_books[:genre],
  'qnt' => hash_books[:qnt],
  'price' => hash_books[:price]}
  book.text = hash_books[:text]
end


File.open(file_name, 'w') {|f| doc.write(f, 2)}

puts 'Запись в файле shelf.xml сделана!'
sleep 1


