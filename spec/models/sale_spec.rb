require 'rails_helper'

RSpec.describe Sale, type: :model do
  before do
    @sale = Sale.create( title: "Some title", description: "Some description", qty_available: 10)
  end
  
  describe 'creation' do
    it 'can be created' do
      expect(@sale).to be_valid
    end
  end
  
  describe 'validation' do
    it 'can be created only if everything not nil' do
      @sale.title = nil
      @sale.description = nil
      @sale.qty_available = nil
      expect(@sale).to_not be_valid
    end
  end
end
