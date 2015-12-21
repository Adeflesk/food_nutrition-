require_relative 'nutrition_api_adapter'
require_relative 'setup_params'
require 'fileutils'
require 'json'

class NutritionApiPrinter

  def initialize(nutrition_api_adapter)
    clear_data_directory
    @na = nutrition_api_adapter
  end

  def search_food(food, max, offset)
    data = @na.search_food(food, max, offset)
    write_file("data/search.json", data)
    return data
  end

  def search_food_with_food_group(food,group,max,offset)
    data = @na.search_food_with_food_group(food,group,max,offset)
    write_file("data/food_search_with_food_group.json",data)
    return data
  end

  def get_food_list(type, sort, max, offset)
    data = @na.get_food_list(type, sort, max, offset)
    write_file("data/food_list.json", data)
    return data
  end

  def get_food_report(ndbn, type)
    data = @na.get_food_report(ndbn, type)
    write_file("data/food_report.json", data)
    return data
  end

  def get_nutrient_report_all(nutrients)
    data = @na.get_nutrient_report_all(nutrients)
    write_file("data/nutrient_report_all.json", data)
    return data
  end


  def get_nutrient_report_food_group(nutrients, group)
    data = @na.get_nutrient_report_food_group(nutrients, group)
    write_file("data/nutrient_report_food_group.json", data)
    return data
  end

  def get_nutrient_report_for_food(food, nutrients)
    data = @na.get_nutrient_report_for_food(food, nutrients)
    write_file("data/nutrient_report_for_food.json", data)
    return data
  end


  def write_file(file, data)
    File.open(file, "w") do |f|
      f.write(JSON.pretty_generate(data))
    end
  end

  def clear_data_directory
    FileUtils.rm(Dir.glob('data/*.json'))
  end

  def write_all_reports()
    search_food("Cod", 50, 0)
    get_food_list("f", "n", 2, 0)
    get_food_report('01009', 'b')
    get_nutrient_report_all(["205", "204", "208"])
    get_nutrient_report_food_group(["205", "204", "208"], ["0100", "0500"])
    get_nutrient_report_for_food('01009', ["205", "204", "208"])
  end


end


