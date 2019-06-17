require 'rails_helper'
RSpec.describe Product, type: :model do

    describe 'Validations' do
      # validation tests/examples here
      
      it 'Category should have a name' do
        @Ncategory = Category.new name:"testing"
        expect(@Ncategory.name).to be_present
        @Ncategory.errors.full_messages
      end

      it 'Product should have a name' do
        @Nproduct = Product.new name:'newProduct'
        expect(@Nproduct.name).to be_present
        @Nproduct.errors.full_messages
      end

      it 'Product should have price' do
        @Nproduct = Product.new price:10.99
        expect(@Nproduct.price).to be_present
        @Nproduct.errors.full_messages
      end
      
      it 'Product should have a quantity' do
        @Nproduct = Product.new quantity:10
        expect(@Nproduct.quantity).to be_present
        @Nproduct.errors.full_messages
      end

      it 'Product should have a Category' do
        @Ncategory = Category.new name:"testing2"
        @Nproduct = Product.new category:@Ncategory
        expect(@Nproduct.category).to be_present
        @Ncategory.errors.full_messages
        @Nproduct.errors.full_messages
      end



    end

  end
  