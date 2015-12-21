require_relative 'lib/nutrition_api_adapter'
require_relative 'lib/setup_params'
require_relative 'lib/food_search'


naa = NutritionApiAdapter.new(SetupParams.new)
puts "Enter in name of food you want to search"
food = gets.chomp
fs = FoodSearch.new(naa.search_food(food,100,0))
puts fs.total
fs.items.each { |item| puts "#{item["offset"]} #{item["name"]}" }
puts "Enter in item number to get ndbno"
number = gets.chomp
puts food =  fs.get_item_ndbno(number.to_i)
puts fs.get_item_food_group(number.to_i)
puts fs.get_item_name(number.to_i)
