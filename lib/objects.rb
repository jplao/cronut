require 'json'
require 'pry'
require './lib/item'

file = File.read('./data/cronut.json')
json = JSON.parse(file)

items = json['items']['item']
item_objects = []
items.each do |item|
  item_objects << Item.new(item)
end
item_objects
