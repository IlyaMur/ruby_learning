class User

  def setSurname(surname)
    @surname = surname
  end
  def setName(name)
    @name = name
  end
  def setMiddlename(middlename)
    @middlename = middlename
  end

  def surname
    @surname
  end
  def name
    @name
  end
  def middlename
    @middlename
  end

end

user1 = User.new
user2 = User.new
user3 = User.new

user1.setSurname('Sidorov')
user2.setSurname('Petrov')
user3.setSurname('Ivanov')

user1.setName('Valdemar')
user2.setName('Stepan')
user3.setName('Igor')

user1.setMiddlename('Alexandrovich')
user2.setMiddlename('Ilyich')
user3.setMiddlename('Kuzmich')

arr = [user1, user2, user3]

id = gets.to_i

puts arr[id].name
puts arr[id].middlename
puts arr[id].surname

arr.each do |i|
  puts i.name
  puts i.middlename
  puts i.surname
end
