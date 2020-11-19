class Hello
  def hello
    t = Time.new
    if t.hour.to_i >= 0 && t.hour.to_i <= 6
      puts 'Доброй ночи'
    elsif t.hour.to_i >= 6 && t.hour.to_i <= 12
      puts 'Доброе утро'
    elsif t.hour.to_i >= 12 && t.hour.to_i <= 18
      puts 'Добрый день'
    elsif t.hour.to_i >= 18 && t.hour.to_i <= 24
      puts 'Добрый вечер'
    end
  end
end
