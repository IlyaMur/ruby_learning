class Human

  def initialize(name, middlename, age)
    @age = age
    @name = name
    @middlename = middlename
  end

  def old?
     if @age > 60
      true
    else
      false
    end
  end

  def gets_name
    if old?
      puts "#{@name} #{@middlename}"
      puts "И ему #{@age} лет - пожилой"
    else
      puts @name
      puts "И ему #{@age} лет - молодой"
    end
  end
end
