class Point
  def setX(x)
    @x = x
  end
  def x
    @x
  end
    def setY(y)
    @y = y
  end
  def y
    @y
  end
end

point1 = Point.new
point2 = Point.new

point1.setX(3)
point1.setY(6)

point2.setX(-1)
point2.setY(5)

distance = Math.sqrt((point2.x - point1.x)**2 + (point2.y - point1.y)**2)

puts distance