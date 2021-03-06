require_relative 'lib/nutrition_api_adapter'
require_relative 'lib/setup_params'
require_relative 'lib/food_search'
require_relative 'lib/food_report'
require_relative 'lib/nutrition_api_printer'

naa = NutritionApiAdapter.new(SetupParams.new)
#np = NutritionApiPrinter.new(naa)
puts "Enter in name of food you want to search or exit to close program"
while(food = gets.chomp) != 'exit'
found = naa.search_food(food,100,0)
if found.include?("404")
  puts "Food not found..Please Enter in a name of food you want to search"
  next
else
  fs = FoodSearch.new(found)
end

puts fs.total
fs.items.each { |item| puts "#{item["offset"]} #{item["name"]}" }
#puts fs.items.each { |item| puts item.values }
#fs.items.each { |item| item.each_key {|key| puts "The key is #{key}"}}
#fs.items.each { |item| item.each_value {|value| puts "The value is #{value}"}}

puts "Enter in item number to get ndbno"
number = gets.chomp
food =  fs.get_item_ndbno(number.to_i)
fr = FoodReport.new(naa.get_food_report(food,'f'))

#puts fs.get_item_food_group(number.to_i)
#puts fs.get_item_name(number.to_i)
puts fr.food_name
fr.nutrients.each {|nutrient| puts "--#{nutrient["name"]}--#{nutrient["group"]} #{nutrient["value"]}#{nutrient["unit"]}"if nutrient["value"] !=0.0}
puts fr.nutrients.count
fr.nutrients.each {|nutrient| puts "--#{nutrient["name"]}--#{nutrient["group"]} #{nutrient["value"]}#{nutrient["unit"]}"if nutrient["group"] =="Vitamins"}

puts "Enter in nutrient name to find full details"
nutrient_name = gets.chomp

puts fr.get_nutrient_values(nutrient_name)
#n_hash = fr.nutrients.find {|i| i["name"] == nutrient_name}
#puts  "#{n_hash["value"]} #{n_hash["unit"]}"
puts "Enter in name of food you want to search or exit to close program"
end
