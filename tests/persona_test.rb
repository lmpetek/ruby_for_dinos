require 'minitest/autorun'
load 'models/persona.rb'

class PersonaTest < MiniTest::Unit::TestCase

  def setup
    @persona = Persona.new("salias","martin")
  end

  def test_first_name
    assert_equal "martin", @persona.first_name
  end

  def test_last_name
    assert_equal "salias", @persona.last_name
  end

  def test_asign_new_first_name
    @persona.first_name = "luis"
    assert_equal "luis", @persona.first_name
  end

end
