week_days = %w[понедельник вторник среда четверг пятница суббота воскресенье]

week_days.select! {|i| i.start_with?('с')}

puts week_days.to_s