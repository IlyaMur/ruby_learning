class Car

  def setWheels(wheels)
    @wheels = wheels
  end
  def setDoors(doors)
    @doors = doors
  end
  def setEngine_value(engine_value)
    @engine_value = engine_value
  end
  def setColor(color)
    @color = color
  end

  def wheels
    @wheels
  end
  def doors
    @doors
  end
  def engine_value
    @engine_value
  end
  def color
    @color
  end
end

zhigul = Car.new
gruzovik = Car.new
f1 = Car.new

zhigul.setColor('black')
zhigul.setDoors(4)
zhigul.setWheels(4)
zhigul.setEngine_value(40)

gruzovik.setColor('green')
gruzovik.setDoors(2)
gruzovik.setWheels(8)
gruzovik.setEngine_value(150)

f1.setColor('white')
f1.setDoors(2)
f1.setWheels(4)
f1.setEngine_value(20)

puts 'Грузовик:'
puts gruzovik.wheels
puts gruzovik.doors
puts gruzovik.color
puts gruzovik.engine_value

puts

puts 'F1:'
puts f1.wheels
puts f1.doors
puts f1.color
puts f1.engine_value

puts

puts 'Жигуль:'
puts zhigul.wheels
puts zhigul.doors
puts zhigul.color
puts zhigul.engine_value

