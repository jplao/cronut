require 'minitest/autorun'
require 'minitest/pride'
require './lib/batter'
require 'pry'

class BatterTest < Minitest::Test
  def test_it_exists
    data = ({ "id" => "1001", "type" => "Regular" })
    batter = Batter.new(data)

    assert_instance_of Batter, batter
  end

  def test_it_has_attributes
    data = ({ "id" => "1001", "type" => "Regular" })
    batter = Batter.new(data)

    assert_equal "1001", batter.id
    assert_equal "Regular", batter.type
  end
end
