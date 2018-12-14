require 'minitest/autorun'
require 'minitest/pride'
require './lib/topping'

class ToppingTest < Minitest::Test
  def test_it_exists
    data = ({ "id" => "5007", "type" => "Powdered Sugar" })
    topping = Topping.new(data)

    assert_instance_of Topping, topping
  end

  def test_it_has_attributes
    data = ({ "id" => "5007", "type" => "Powdered Sugar" })
    topping = Topping.new(data)

    assert_equal "5007", topping.id
    assert_equal "Powdered Sugar", topping.type
  end
end
