variable = 1


class MyClass
  def initialize
    @variable = 2
  end
  def check_variables
    p defined?(variable)
    p defined?(@variable)
  end
end

cl = MyClass.new

puts 'В классе:'
cl.check_variables
puts

puts 'Вне классе:'
p defined?(variable)
p defined?(@variable)

