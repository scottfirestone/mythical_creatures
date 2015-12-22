class Centaur
  attr_reader :name, :breed, :cranky

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = 0
    @standing = true
  end

  def shoot
    if !cranky? && !laying?
      @cranky += 1
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    if !cranky? && !laying?
      @cranky += 1
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    @cranky >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if standing?
      "NO!"
    else
      @cranky = 0
    end
  end

  def lay_down
    @standing = !@standing
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def sick?
    @sick
  end

  def laying?
    @laying
  end

  def drink_potion
    if laying?
      @sick = true
      "I can't do that! BARF!"
    else
      @cranky = 0
    end
  end
end
