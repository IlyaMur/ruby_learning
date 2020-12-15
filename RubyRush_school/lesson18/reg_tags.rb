puts 'Введите строку:'
str = gets.chomp

arr = str.split(' ')
tags = []


arr.select do |i|
  if i =~ /^#[^.,!?]/
    tags << i
  end
end

unless tags.empty?
  puts 'вот такие хэш-теги:'
  puts tags
end