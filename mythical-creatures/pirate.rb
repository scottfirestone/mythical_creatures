class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @curse = 0
    @ship = false
    @booty = 0
  end

  def cursed?
    @curse >= 3
  end

  def commit_heinous_act
    @curse += 1
  end

  def rob_ship
    @booty +=100
  end
end
