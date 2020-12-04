mouth = File.new('mouth.txt', 'r:UTF-8')
mouth_arr = mouth.readlines
mouth.close


nose = File.new('nose.txt', 'r:UTF-8')
nose_arr = nose.readlines
nose.close

eyes = File.new('eyes.txt', 'r:UTF-8')
eyes_arr = eyes.readlines
eyes.close

hair = File.new('hair.txt', 'r:UTF-8')
hair_arr = hair.readlines
hair.close


puts hair_arr.sample
puts eyes_arr.sample
puts nose_arr.sample
puts mouth_arr.sample

