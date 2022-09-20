class Vendor
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end
  
  def check_stock(item)
    item.quantity
  end
  
  def stock(item, number)
    @inventory[item] =     item.add_quantity(number)
  end
  
end