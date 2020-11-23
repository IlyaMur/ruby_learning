arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
puts "Вот такая палка колбасы у нас есть:
#{arr.to_s}"

puts 'Сколько первых элементов отрезать?'
nums = gets.to_i

def new_array(arr, nums)

  if nums > arr.size
    nums = arr.size
  end

  new_ar = []
  0.upto(nums - 1) do |i|
    new_ar << arr[i]
  end
  puts new_ar.to_s
end

puts "Вот ваша колбаса:"
puts new_array(arr, nums)

