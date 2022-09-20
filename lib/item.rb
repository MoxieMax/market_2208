class Item
  attr_reader :name, :price, :quantity
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @price = attributes.fetch(:price).delete('$').to_f.round(2)
    @quantity = 0
  end
  
  def add_quantity(number)
    @quantity += number
  end
end