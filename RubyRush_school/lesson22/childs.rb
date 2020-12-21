require_relative 'parents'

class Childs < Parents

  def obedient?
    false
  end

end


parent = Parents.new('Василий Игоревич')
child = Childs.new('Маша')

puts "#{parent.name} послушный: #{parent.obedient?}"
puts "#{child.name} послушная: #{child.obedient?}"
