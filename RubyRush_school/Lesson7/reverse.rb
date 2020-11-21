array_to_invert = [1, 2, 3, 4, 5, 6, 7]
puts "Исходный массив: #{array_to_invert.to_s}"


flag = false
buff = 0

until flag == true
  flag = true

  0.upto(array_to_invert.size - 2) do |i|

    if array_to_invert[i] < array_to_invert[i+1]
      buff = array_to_invert[i]
      array_to_invert[i] = array_to_invert[i+1]
      array_to_invert[i+1] = buff

      flag = false
    end
  end
end


puts "Новый массив, полученный от исходного: #{array_to_invert.to_s}"

