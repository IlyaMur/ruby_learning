class Game

  def initialize(word)
    @letters = get_letters(word)
    @errors = 0
    @good_letters = []
    @bad_letters = []
    @status = 0
  end

  def get_letters(word)

    if word == nil || word == ''
    abort 'Введено некорректное значение!'
    end

    new_word = ''

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


  def ask_next_letter
    puts 'Введите следующую букву'

    letter = ''

    while letter == ''
      letter = STDIN.gets.chomp
    end

    next_step(letter)
  end

  def next_step(bukva)
    if @status == -1 || @status == 1
      return
    end

    if @good_letters.include?(bukva) ||
    @bad_letters.include?(bukva)
      return
    end

    if @letters.include?(bukva)
      @good_letters << bukva

      if @good_letters.uniq.size == @letters.uniq.size
        @status = 1
      end

    else
      @bad_letters << bukva
      @errors += 1

      if @errors >= 7
        @status = -1
      end
    end
  end

  def letters
    @letters
  end

  def good_letters
    @good_letters
  end

  def bad_letters
    @bad_letters
  end

  def status
    @status
  end

  def errors
    @errors
  end

end

