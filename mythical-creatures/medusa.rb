require 'pry'
class Medusa
  attr_reader :name
  attr_accessor :alive

  def initialize(name)
    @name = name
    @statues = []
    @victims = 0
    @alive = true
  end

  def statues
    @statues.take(3)
  end

  def respond_to?(action)
    @actions << action
  end

  def empty?
    @statues == 0
  end

  def stare(victim)
    @statues.unshift(victim)
    victim.stoned = true
    @victims +=1
    if @statues.size > 3
      @statues[3].stoned = false
      @statues.delete_at(3)
    end
    @victims < 5? @alive = true : @alive = false
  end
end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end

# binding.pry
