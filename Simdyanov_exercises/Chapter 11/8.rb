class User
  def initialize(name, surname, score)
    @name = name
    @surname = surname
    @score = score
  end

  def score
    @score
  end
  def name
    @name
  end
end

user1 = User.new('Vanya', 'Ivanov', 5)
user2 = User.new('Sergey', 'Sergeev', 4)
user3 = User.new('Kirill', 'Kirillov', 3)
user4 = User.new('Semen', 'semenov', 1)
user5 = User.new('Igor', 'Igorev', 4)
user6 = User.new('Yuri', 'Zhukov', 3)
user7 = User.new('Nikita', 'Romanov', 5)

arr = [user1, user2, user3, user4, user5, user6, user7]

avg = (arr.reduce(0) {|s, i|  s += i.score}) / arr.size.to_f

puts 'Средняя оценка выше:'
arr.select do |i|
  if i.score > avg
    puts i.name
  end
end


