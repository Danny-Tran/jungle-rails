RSpec.describe Product, type: :model do

    describe 'Validations' do
      # validation tests/examples here
      
      it 'should have a name' do
        @catergory = Catergory.new

        expect(@catergory.name).should be_true
      end

    end

  end
  