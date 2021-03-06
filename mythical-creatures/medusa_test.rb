gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    skip
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_can_stare
    skip
    medusa = Medusa.new("Cassiopeia")

    assert medusa.respond_to?(:stare)
  end

  def test_has_statues
    skip
    medusa = Medusa.new("Cassiopeia")

    assert medusa.respond_to?(:statues)
  end

  def test_when_first_created_she_has_no_statues
    skip
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
    skip
    medusa = Medusa.new("Cassiopeia")
    victim1 = Person.new("guy1")
    victim2 = Person.new("guy2")
    victim3 = Person.new("guy3")
    victim4 = Person.new("guy4")
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)
    assert_equal 3, medusa.statues.size
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    skip
    medusa = Medusa.new("Cassiopeia")
    victim1 = Person.new("guy1")
    victim2 = Person.new("guy2")
    victim3 = Person.new("guy3")
    victim4 = Person.new("guy4")
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)
    refute victim1.stoned?
  end

  def test_is_alive_by_default
    skip
    medusa = Medusa.new("Cassiopeia")
    assert medusa.alive
  end

  def test_is_not_alive_after_five_victims
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim1 = Person.new("guy1")
    victim2 = Person.new("guy2")
    victim3 = Person.new("guy3")
    victim4 = Person.new("guy4")
    victim5 = Person.new("guy5")
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)
    assert medusa.alive
    medusa.stare(victim5)
    refute medusa.alive
  end

end
