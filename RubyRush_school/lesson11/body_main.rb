require_relative'body_methods'

frst = Bodybuilder.new(0, 0, 0)
scnd = Bodybuilder.new(0, 0, 0)
thrd = Bodybuilder.new(0, 0, 0)

frst.pump('biceps')
frst.pump('biceps')
frst.pump('biceps')
frst.pump('delta')
frst.pump('triceps')
frst.pump('triceps')

scnd.pump('delta')
scnd.pump('delta')
scnd.pump('delta')
scnd.pump('delta')
scnd.pump('delta')
scnd.pump('biceps')


puts 'Первый атлет:'
frst.status
puts
puts 'Второй атлет:'
scnd.status
puts
puts 'Третий атлет:'
thrd.status