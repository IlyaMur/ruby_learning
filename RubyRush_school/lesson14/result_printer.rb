class ResultPrinter

  def initialize
    @status_image = []

    current_path = File.dirname(__FILE__)
    counter = 0

    begin
    until counter == 8
      file_name = current_path + "/image/#{counter}.txt"
      f = File.new(file_name, 'r:UTF-8')
      @status_image << f.read
      f.close
      counter += 1
       end
    rescue
      puts 'Не найдено картинок!'
      7.times do
        @status_image << '***'
      end
    end


  def print_status(game)
    cls
    puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"
    puts "Ошибки: #{game.bad_letters.join(', ')}"
    print_viselitsa(game.errors)


    if game.status == -1
      puts "\nВы проиграли :(\n"
      puts 'Загаданное слово было: ' + game.letters.join('')
      puts
    elsif game.status == 1
      puts "Поздравляем, вы выиграли!\n\n"
    else
      puts 'У вас осталось ошибок: ' + (7 - game.errors).to_s
    end
  end

  def get_word_for_print(letters, good_letters)
    result = ''

    for item in letters do
      if good_letters.include?(item)
        result += item + ' '
      else
        result += '__ '
      end
    end

    return result
    end
  end

  def print_viselitsa(errors)
    puts @status_image[errors]
  end

  def cls
    system('clear') || system('cls')
  end


end


