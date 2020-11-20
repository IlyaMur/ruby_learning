class User

  def setSurname(surname)
    @surname = surname
  end

    def surname
    @surname

  def setName(name)
    @name = name
  end

  def name
    @name
  end

   def setMiddlename(middlename)
    @middlename = middlename
  end

    def middlename
    @middlename
  end
end

me = User.new
me.setSurname('Muratov')
me.setName('Ilya')
me.setMiddlename('Evgenyevich')

puts me.name
puts me.surname
puts me.middlename
