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
      File.open("data/search.json","w")do |f|
        f.write(JSON.pretty_generate(data))
      end
      return data
  end


end

naa = NutritionApiAdapter.new(SetupParams.new)

np = NutritionApiPrinter.new(naa)

np.get_food("Cod",1,0)
