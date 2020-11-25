
def get_letters
  word = ARGV[0]
  new_word = ''


  if word == nil || word == ''
    abort 'Введено некорректное значение!'
  end

  word.each_char do |c|
    if c == 'ё'
      c = 'е'
    elsif c == 'й'
      c = 'и'
    end
    new_word += c
  end

  new_word.split('')
end


def get_user_input

  letter = ''

  while letter == ''

    letter = STDIN.gets.chomp

  end

  return letter
end

def check_result(letters, user_input, good_letters, bad_letters)

  if good_letters.include?(user_input) ||
    bad_letters.include?(user_input)
    return 0
  end

  if letters.include?(user_input)
    good_letters << user_input

    if good_letters.uniq.size == letters.uniq.size
      return 1
    else
      return 0
    end
  else 
    bad_letters << user_input
    return -1
  end
end

def get_word_for_print(letters, good_letters)
  result = ''

  for i in letters do
    if good_letters.include?(i)
      result += i + ' '
    else
      result += '__ '
    end
  end
  return result
# здесь я поставил другой цикл + << + не обозначил return
end



def print_status(letters, good_letters, bad_letters, errors)
  puts "Слово: " + (get_word_for_print(letters, good_letters))

  puts "Ошибки: #{errors}: #{bad_letters.join(', ')}"   

  if errors >= 7
    puts 'Вы проиграли! :('
  else
    if letters.uniq.size == good_letters.uniq.size
      puts 'ПОБЕДА!'
    else
      puts "У вас осталось: #{7 - errors} попыток."
    end
  end
end


def cls
  system "clear" or system "cls"
end






