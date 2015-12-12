require_relative 'nutrition_api_adapter'
require_relative 'setup_params'
require 'fileutils'
require 'json'

class NutritionApiPrinter

  def initialize(nutrition_api_adapter)
     FileUtils.rm(Dir.glob('data/*.json'))
     @na = nutrition_api_adapter
  end

  def get_food(food, max,offset)
      data = @na.get_food(food,max,offset)
      write_file("data/search.json",data)
      return data
  end

  def get_food_list(type,sort,max,offset)
    data = @na.get_food_list(type,sort, max,offset)
    write_file("data/food_list.json",data)
    return data
  end


  def write_file(file,data)
  File.open(file,"w")do |f|
        f.write(JSON.pretty_generate(data))
  end
  end


end

naa = NutritionApiAdapter.new(SetupParams.new)

np = NutritionApiPrinter.new(naa)

np.get_food("Cod",1,0)
np.get_food_list("f","n",2,0)
