class Market
  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end
  
  def add_vendor(vendor)
    @vendors << vendor
  end
  
  def vendor_names
    vendor_names = []
    @vendors.each do |vendor|
      vendor_names << vendor.name
    end
    vendor_names
  end
  
  def vendors_that_sell(item)
    sellers = []
    @vendors.each do |vendor|
      vendor.inventory.each do |product|
        sellers << product if product.name == item.name
      end
    end
  end
  
end