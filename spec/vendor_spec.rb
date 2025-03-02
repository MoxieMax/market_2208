require 'pry'
require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  before(:each) do
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end
  
  it 'exists' do
    expect(@vendor).to be_a(Vendor)
  end
  
  it 'has a name' do
    expect(@vendor.name).to eq('Rocky Mountain Fresh')
  end
  
  describe 'inventory methods' do
    before(:each) do
      @item1 = Item.new({name: 'Peach', price: "$0.75"})
      @item2 = Item.new({name: 'Tomato', price: "$0.50"})
    end
      
    it 'starts with an empty inventory' do
      
      expect(@vendor.inventory).to eq({})
      expect(@vendor.check_stock(@item1)).to eq(0)
      # binding.pry
    end
    
    it 'can stock items in inventory' do
      @vendor.stock(@item1, 30)
      
      expect(@vendor.inventory).to eq({@item1 => 30})
      @vendor.stock(@item1, 25)
      expect(@vendor.check_stock(@item1)).to eq(55)
      @vendor.stock(@item2, 12)
      expect(@vendor.inventory).to eq({@item1=>55, @item2 =>12})
    end
    
  end
  
end