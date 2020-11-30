months = %w[январь февраль март апрель май июнь июль август сентябрь октябрь ноябрь декабрь]

short = months.select {|i| i.length < 5}
long = months.delete_if {|i| i.length < 5}

puts short.to_s
puts long.to_s
