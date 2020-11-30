class Movie

  def initialize(movie_name, director_surname)
    @movie_name = movie_name
    @director_surname = director_surname
  end
  def movie_name
    @movie_name
  end
  def director_surname
    @director_surname
  end
end

puts 'Фильмы какого режиссера Вы хотите посмотреть?'
director_surname = gets.chomp
movies = []

begin
  puts 'Какой-нибудь его хороший фильм?'
  movie_name = gets.chomp
  movies << Movie.new(movie_name, director_surname)
end until movies.size == 3

randomizer = rand 0..2
puts "И сегодня вечером рекомендую посмотреть: #{movies[randomizer].movie_name}"
puts "Режиссера: #{movies[randomizer].director_surname}"