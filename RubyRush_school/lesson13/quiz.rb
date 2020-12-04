questions = File.new('questions.txt', 'r:UTF-8')
questions_arr = questions.readlines

answers = File.new('answers.txt', 'r:UTF-8')
answers_arr = answers.readlines

count = 0
answer = ''

questions_arr.each_with_index do |q,i|
  puts q
  answer = gets.chomp
  if answer == answers_arr[i].chomp
    count += 1
    puts 'Верно!'
  else
    puts 'Неверный ответ!'
    puts "Верно: #{answers_arr[i]}"
  end
end

puts "У вас #{count} правильных ответов из #{questions_arr.size}"
