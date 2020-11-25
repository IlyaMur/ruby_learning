require_relative 'viselica_methods'

cls

puts 'Игра Виселица'

letters = get_letters # метод получения массива букв

good_letters = []
bad_letters = []

errors = 0


until errors == 7 

  print_status(letters, good_letters, bad_letters, errors)

  puts 'введите следующую букву'

  user_input = get_user_input

  result = check_result(letters, user_input, good_letters, bad_letters)
  
  if result == -1
    errors += 1
  elsif result == 1
    break
  end
end

print_status(letters, good_letters, bad_letters, errors)
