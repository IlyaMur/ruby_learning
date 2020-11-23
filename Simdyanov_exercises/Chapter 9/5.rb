def cel2far(cel)
  fahrenheit = (cel * 9 / 5) + 32
end

def far2cel(far)
  celsium = (far - 32) * 5 / 9
end

puts cel2far(3)
puts far2cel(50)