require 'open-uri'
require 'json'
require_relative 'setup_params'
require_relative 'nutrient_and_food_group_builder'

class NutritionApiAdapter

  def initialize(setupparams)
    @api_key = setupparams.api_key
    @api_host = setupparams.api_host
    @api_search = setupparams.api_search
    @builder = NutrientAndFoodGroupBuilder.new
  end

  def api_list_type(type)
    return "list?format=json&lt=#{type}"
  end

  def api_report_type(ndbno,type)
    return "reports/?ndbno=#{ndbno}&type=#{type}&format=json&"
  end

  def api_boundries(max,offset)
    return "&max=#{max}&offset=#{offset}&"
  end

  def api_sort(max,offset)
    return "&sort=n#{api_boundries(max,offset)}"
  end

  def api_list_sort(sort,max,offset)
    return "&sort=#{sort}#{api_boundries(max,offset)}"
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

  def get_food_report_url(ndbno,type)
    return "#{@api_host}#{api_report_type(ndbno,type)}#{@api_key}"
  end

  def get_nutrient_report_all_url(nutrients)
    return "#{@api_host}#{api_nutrients}#{@api_key}#{@builder.api_nutrients_list_builder(nutrients)}"
  end

  def get_nutrient_report_food_group_url(nutrients,group)
    return "#{@api_host}#{api_nutrients}#{@api_key}#{@builder.api_nutrients_list_builder(nutrients)}#{@builder.api_food_group_list_builder(group)}"
  end

  def get_nutrient_report_for_food_url(food,nutrients)
    return"#{@api_host}#{api_nutrients}#{@api_key}#{@builder.api_nutrients_list_builder(nutrients)}#{api_food(food)}"
  end

  def get_food(food,max,offset)
    return get_data(get_food_url(food,max,offset))
  end

  def get_food_list(type,sort,max,offset)
    return get_data(get_food_list_url(type,sort,max,offset))
  end

  def get_food_report(ndbno,type)
      return get_data(get_food_report_url(ndbno,type))
  end

  def get_nutrient_report_all(nutrients)
    return get_data(get_nutrient_report_all_url(nutrients))
  end

  def get_nutrient_report_food_group(nutrients,group)
    return get_data(get_nutrient_report_food_group_url(nutrients,group))
  end

  def get_nutrient_report_for_food(food, nutrients)
       return get_data(get_nutrient_report_for_food_url(food,nutrients))
  end

  def get_data(url)
    begin
      input_file = open(url)
    rescue OpenURI::HTTPError =>ex
       input_file = [ex.io.status[1],ex.io.status[0]].to_json
    end
    return JSON.load(input_file)
  end

end


