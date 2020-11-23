def sklonenie(number, krokodil, krokodila, krokodilov)
  # Сначала, проверим входные данные на правильность
  if number == nil || !number.is_a?(Numeric)
    # Допустим, первый параметр пустой или не является числом (строка). Будем
    # считать, что нас это устроит, просто продолжаем как будто он нулевой.
    number = 0
  end

  if number >= 11 && number <= 14
    return krokodilov
  end

  # Так как склонение определяется последней цифрой в числе, вычислим остаток
  # от деления числа number на 10
  ostatok = number % 10
  ostatok100 = number % 100

  # Для 1 — именительный падеж (Кто?/Что? — крокодил)
  if ostatok == 1
    return krokodil
  end

  if ostatok100 >= 11 && ostatok100 <= 14
    return krokodilov
  end


  # Для 2-4 — родительный падеж (2 Кого?/Чего? — крокодилов)
  if ostatok >= 2 && ostatok <= 4
    return krokodila
  end

  # 5-9 или ноль — родительный падеж и множественное число (8 Кого?/Чего? —
  # крокодилов)
  if (ostatok >= 5 && ostatok <= 9) || ostatok == 0
    return krokodilov
  end
end

# Берем из командной строки кол-во негритят
skolko = ARGV[0].to_i

# Выводим первую строчку детской считалки из романа Агаты Кристи
puts "#{skolko} #{sklonenie(skolko, 'негритёнок', 'негритёнка', 'негритят')} " \
  "#{sklonenie(skolko, 'пошел', 'пошли', 'пошли')} купаться в море!"

#puts ostatok