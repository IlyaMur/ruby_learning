path = File.dirname(__FILE__)

mouth = File.new(path + '/' + 'mouth.txt', 'r:UTF-8')
mouth_arr = mouth.readlines
mouth.close


nose = File.new(path + '/' + 'nose.txt', 'r:UTF-8')
nose_arr = nose.readlines
nose.close

eyes = File.new(path + '/' + 'eyes.txt', 'r:UTF-8')
eyes_arr = eyes.readlines
eyes.close

hair = File.new(path + '/' + 'hair.txt', 'r:UTF-8')
hair_arr = hair.readlines
hair.close

time = Time.now
file_name = 'face' + time.strftime("%Y.%m.%d %H-%M-%S") + '.txt'

file = File.new(path + '/' + file_name, 'a:UTF-8')

file.puts hair_arr.sample
file.puts  eyes_arr.sample
file.puts  nose_arr.sample
file.puts  mouth_arr.sample
file.close