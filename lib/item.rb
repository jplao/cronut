require './lib/batter'
require './lib/topping'


class Item
  attr_reader :id,
              :type,
              :name,
              :ppu

  def initialize(data)
    @id = data['id']
    @type = data['type']
    @name = data['name']
    @ppu = data['ppu']
    @batters = data['batters']
    @topping = data['topping']
  end

  def batters
    @batters['batter'].map do |batter|
      Batter.new(batter)
    end
  end

  def topping
    @topping.map do |topping|
      Topping.new(topping)
    end
  end
end
