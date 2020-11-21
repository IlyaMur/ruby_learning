def colors(color)

	case color
	when 1 then 'red'
  when 2 then 'orange'
  when 3 then 'yellow'
  when 4 then 'green'
  when 5 then 'blue'
  when 6 then 'dark blue'
  when 7 then 'violet'
  else 
    nil
  end
end


puts colors(3)