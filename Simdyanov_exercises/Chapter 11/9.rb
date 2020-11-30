planets = {earth: 1650, uran: 5010, pluto: 10400, sun: 25650, mars: 1120, venus: 12100}

puts planets.sort_by {|k, v| v}

puts planets.select {|i, v| v < 10400}
puts planets.delete_if {|i, v| v < 10400}