require 'yaml'
require 'open-uri'
require 'json'

class Setup

  def get_file
    return YAML.load_file('config/secrets.yml')
  end

  def api_key
    return get_file['development']['dafoodkey']
  end

  def api_host
    return get_file['development']['api_host']
  end

  def api_search
    return get_file['development']['api_search']
  end


  def api_sort(max,offset)
    return"&sort=n&#{api_boundries(max,offset)}"
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

  def api_nutrients_list_builder(nutrients)
    pretext = "&nutrients="
    finish = nutrients.map { |n|pretext + n}.join(',')
    return  finish.gsub(/[\s,]/,"")
  end

  def api_food_group_list_builder(food_group)
    pretext = "&fg="
    food_group_list = food_group.map{ |fg| pretext + fg}.join(',')
    return food_group_list.gsub(/[\s,]/,"")
  end


  def get_food(food,max,offset)
    in_put_file =   open("#{api_host}#{api_search}#{food}#{api_sort(max,offset)}#{api_key}")
  return  JSON.load(in_put_file)
  end



  def get_list(type,sort,max,offset)
    json_list = open("#{api_host}#{api_list_type(type)}#{api_list_sort(sort,max,offset)}#{api_key}")
    return JSON.load(json_list)
  end

  def get_food_report(ndbno,type)
    json_list = open("#{api_host}#{api_report_type(ndbno,type)}#{api_key}")
    return JSON.load(json_list)
  end

  def get_nutrient_report_all(nutrients)
    json_list = open("#{api_host}#{api_nutrients}#{api_key}#{api_nutrients_list_builder(nutrients)}")
    return JSON.load(json_list)
  end

  def get_nutrient_report_food_group(group, nutrients)
      json_list = open("#{api_host}#{api_nutrients}#{api_key}#{api_nutrients_list_builder(nutrients)}#{api_food_group_list_builder(group)}")
       return JSON.load(json_list)
  end

  def get_nutrient_report_for_food(food, nutrients)
       json_list = open("#{api_host}#{api_nutrients}#{api_key}#{api_nutrients_list_builder(nutrients)}#{api_food(food)}")
       return JSON.load(json_list)
  end
end


setup = Setup.new
#puts setup.get_food("Cod",25,0)
#puts setup.get_list("f","id",25,0)
#puts "#{setup.api_host}#{setup.api_report_type('01009','b')}#{setup.api_key}" 
#puts setup.api_nutrients_list_builder(["204","205","208"])
#puts setup.get_food_report("15017","f")
#puts "#{setup.api_host}#{setup.api_nutrients}#{setup.api_key}#{setup.api_nutrients_list_builder(["204","205","208"])}"
#puts setup.get_nutrient_report_all(["204","205","208"])
#puts setup.api_food_group_list_builder(["0100","0500"])
#puts setup.get_nutrient_report_food_group(["0100","0500"],["204","205","208"])
#puts setup.get_nutrient_report_for_food("01009",["204","205","208","269"])
hash_file = setup.get_food("Butter",20,0)

puts hash_file["list"]["item"][1]["name"]
ndbno = hash_file["list"]["item"][1]["ndbno"]
report_hash =  setup.get_food_report(ndbno,"f")
puts report_hash["report"]["food"]["nutrients"][12]["name"]
puts report_hash["report"]["food"]["nutrients"].map {|n| n["name"] if n['group']=='Vitamins'}
