require 'date'

def year(year_to_check)
  if (year_to_check % 4 == 0 && year_to_check % 100 != 0) || year_to_check % 400 == 0
    puts 'Високосный'
  else
    puts 'Не високосный'
  end
end


y = DateTime.now

year = y.strftime('%Y')

year(year)