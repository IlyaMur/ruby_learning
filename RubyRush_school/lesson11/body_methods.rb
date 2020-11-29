class Bodybuilder
  def initialize (biceps, triceps, delta)
    @biceps = biceps
    @triceps = triceps
    @delta = delta
  end

  def pump (muscule)
    case muscule
    when 'biceps'
      @biceps += 1
    when 'triceps'
      @triceps += 1
    when 'delta'
      @delta += 1
    end
  end

  def status
    puts "Бицепс: #{@biceps}"
    puts "Трицепс: #{@triceps}"
    puts "Дельтовидка: #{@delta}"
  end
end



