require_relative 'human_methods'

human1 = Human.new('Илья','Евгеньевич', 30)
human2 = Human.new('Сергей','Петрович', 65)
human3 = Human.new('Иван','Иванович', 20)


human1.set_fav_movie = 'Челюсти'
human2.set_fav_movie = 'Берегись автомобиля'
human3.set_fav_movie = 'Парк Юрского периода'

human1.gets_name
puts "С любимым фильмом: #{human1.movie}"
human2.gets_name
puts "С любимым фильмом: #{human2.movie}"
human3.gets_name
puts "С любимым фильмом: #{human3.movie}"
