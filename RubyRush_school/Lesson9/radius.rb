def circle(radius)
  puts "Площадь круга: #{ 3.14 * (radius)**2 }"
end

puts 'Введите радиус круга:'
circl1 = gets.to_f

circle(circl1)

puts 'Введите радиус второго круга:'

circl2 = gets.to_f

circle(circl2)