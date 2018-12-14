require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/batter'
require './lib/topping'


require 'pry'

class ItemTest < Minitest::Test
  def test_it_exists
    data = ({
          "id" => "0001",
          "type" => "donut",
          "name" => "Cake",
          "ppu" => 0.55,
          "batters" =>
            {
              "batter" =>
                [
                  { "id" => "1001", "type" => "Regular" },
                  { "id" => "1002", "type" => "Chocolate" },
                  { "id" => "1003", "type" => "Blueberry" },
                  { "id" => "1004", "type" => "Devil's Food" }
                ]
            }
          })
    item = Item.new(data)

    assert_instance_of Item, item
  end

  def test_it_has_attributes
    data = ({
          "id" => "0001",
          "type" => "donut",
          "name" => "Cake",
          "ppu" => 0.55
          })
    item = Item.new(data)
    assert_equal "0001", item.id
    assert_equal "donut", item.type
    assert_equal "Cake", item.name
    assert_equal 0.55, item.ppu
  end

  def test_it_has_batters
    data = ({
          "id" => "0001",
          "type" => "donut",
          "name" => "Cake",
          "ppu" => 0.55,
          "batters" =>
            {
              "batter" =>
                [
                  { "id" => "1001", "type" => "Regular" },
                  { "id" => "1002", "type" => "Chocolate" },
                  { "id" => "1003", "type" => "Blueberry" },
                  { "id" => "1004", "type" => "Devil's Food" }
                ]
            }
          })
    item = Item.new(data)

    assert_instance_of Batter, item.batters.first
    assert_equal "1001", item.batters.first.id
    assert_equal "Regular", item.batters.first.type
  end

  def test_it_has_toppings
    data = ({
          "id" => "0001",
          "type" => "donut",
          "name" => "Cake",
          "ppu" => 0.55,
          "batters" =>
            {
              "batter" =>
                [
                  { "id" => "1001", "type" => "Regular" },
                  { "id" => "1002", "type" => "Chocolate" },
                ]
            },
          "topping" =>
            [
              { "id" => "5001", "type" => "None" },
              { "id" => "5002", "type" => "Glazed" },
            ]
          })
    item = Item.new(data)

    assert_instance_of Topping, item.topping.first
    assert_equal "5001", item.topping.first.id
    assert_equal "None", item.topping.first.type
  end
end
