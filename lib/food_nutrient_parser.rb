require 'json'

class FoodNutrientParser
  def read_file
    return File.read('report.json')
  end

  def turn_to_hash(file)
    return JSON.parse(file)
  end

  def get_food_name(report_hash)
    return report_hash["report"]["food"]["name"]
  end

  def get_food_group_name(report_hash)
    return report_hash["report"]["food"]["fg"]
  end

  def  get_nutrients_by_group(report_hash,nutrient_type)
    return report_hash["report"]["food"]["nutrients"].map {|n| [n["name"],n["unit"],n["value"]].to_s if n['group']== nutrient_type}
  end
end


datap = FoodNutrientParser.new
puts datap.get_food_name(datap.turn_to_hash(datap.read_file))
puts datap.get_food_group_name(datap.turn_to_hash(datap.read_file))
puts datap.get_nutrients_by_group(datap.turn_to_hash(datap.read_file),"Proximates").compact
