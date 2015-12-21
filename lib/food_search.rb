class FoodSearch

  def initialize(food_search)
    @search = food_search["list"]
  end

  def total
    return  @search["total"]
  end

  def sort
    return @search['sr']
  end

  def query
    return @search["q"]
  end

  def items
    return @search["item"]
  end

  def get_item_ndbno(offset)
    items.find {|i| i["offset"]== offset}["ndbno"]
  end

  def get_item_food_group(offset)
    items.find {|i| i["offset"] == offset}["group"]
  end

  def get_item_name(offset)
    items.find {|i| i["offset"] == offset}["name"]
  end

  def get_item(offset)
  end

end
