def week(color)

  case color
  when 1 then 'понедельник'
  when 2 then 'вторник'
  when 3 then 'среда'
  when 4 then 'четверг'
  when 5 then 'пятница'
  when 6 then 'суббота'
  when 7 then 'воскресенье'
  else 
    nil
  end

end


p week(111)