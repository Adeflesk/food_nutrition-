require 'yaml'
require 'open-uri'
require 'json'
require 'nutrient_and_food_group_builder'

class NutritionApiAdapter

  def initialize
    config = YAML.load_file('config/secrets.yml')
    @api_key = config['development']['dafoodkey']
    @api_host = config['development']['api_host']
    @api_search = config['development']['api_search']
    @builder = NutrientAndFoodGroupBuilder.new
  end

  def api_sort(max,offset)
    return "&sort=n#{api_boundries(max,offset)}"
  end

  def api_list_type(type)
    return "list?format=json&lt=#{type}"
  end

  def api_report_type(ndbno,type)
    return "reports/?ndbno=#{ndbno}&type=#{type}&format=json&"
  end

  def api_list_sort(sort,max,offset)
    return "&sort=#{sort}#{api_boundries(max,offset)}"
  end

  def api_boundries(max,offset)
    return "&max=#{max}&offset=#{offset}&"
  end

  def api_nutrients
    return "nutrients/?format=json&"
  end

  def api_food(food)
    return "&ndbno=#{food}"
  end





  def get_food_url(food, max,offset)
    return "#{@api_host}#{@api_search}#{food}#{api_sort(max,offset)}#{@api_key}"
  end

  def get_food_list_url(type,sort,max,offset)
    return "#{@api_host}#{api_list_type(type)}#{api_list_sort(sort,max,offset)}#{@api_key}"
  end

  def get_food(food,max,offset)
    input_file =  open(get_food_url(food,max,offset))
    return JSON.load(input_file)
  end

end


