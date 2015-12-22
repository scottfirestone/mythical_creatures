require 'pry'

class Werewolf
  attr_reader :name, :location, :hungry

  def initialize(name, location)
    @name = name
    @location = location
    @form = "human"
    @hungry = false
  end

  def human?
    @form == "human"
  end

  def change!
    # binding.pry
    @form = (@form == "human")? "werewolf" : "human"
    @hungry = true
  end

  def werewolf?
    @form == "werewolf"
  end
end
