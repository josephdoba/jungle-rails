require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @category = Category.create!(name: 'Cat Sneakers')
    @product = Product.create!(name: 'Meowntin boots', description: 'Hand crafted sneakers... for cats', category: @category, quantity: 10, price: 1699)
  end

  describe 'Validations' do
    # validates :name, presence: true
    context "When a product has been created" do

      it "should have a name for products" do
        @product.name != nil
        @product.validate
        expect(@product.name).not_to eq nil
      end

      # validates :price, presence: true
      it "should have a price tag" do
        @product.price != nil
        @product.validate
        expect(@product.price).not_to eq nil
      end

    # validates :quantity, presence: true
    it "should have quantity available" do
      @product.quantity != nil
      @product.validate
      expect(@product.quantity).not_to eq nil
    end

    # validates :category, presence: true
    it "should have a category for products" do
      @product.category != nil
      @product.validate
      expect(@product.category).not_to eq nil
    end

    it "should have a description" do
      @product.description != nil
      @product.validate
      expect(@product.description).not_to eq nil
    end
    

    end
  end
end
