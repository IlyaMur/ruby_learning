time = Time.now
t = time.strftime('%m.%d')

path = File.dirname(__FILE__)
file_name = path + '/' + 'celeb.txt'
celeb_arr = []

if File.exist?(file_name)
  celeb = File.new(file_name, 'r:UTF-8')
  celeb_arr = celeb.readlines
else
  puts 'Не вижу файла'
end

celeb_arr.each do |x|
  if x.strip == t || time.wday == 6 || time.wday == 0
    puts 'Выходной'
  else
    puts 'Не выходной'
  end
end

