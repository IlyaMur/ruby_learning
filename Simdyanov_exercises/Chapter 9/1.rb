def summ(*params)
  sum = []
  params.each { |i| sum += i }
  puts sum.sum
end

arr = [1, 2, 3, 4, 5]

summ(arr)

