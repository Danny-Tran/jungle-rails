require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  it 'Password and Password_digtest must be equal' do
    @user = User.new password_confirmation:'123', password:'12'
    @user.save
    expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
  end
    
  it "Password and Password_digest must be present" do
    @user = User.new password_confirmation:'12'
    @user.save
    expect(@user.errors[:password]).to include("can't be blank")
    expect(@user.password_digest).to_not be_present
  end
  
  

  it "Email must be unique" do
    @user1 = User.new email:'example@gmail.com'
    @user1.save
    @user2 = User.new email:'example@gmail.com'
    # @user2.email.upcase
    @user2.save
    expect(@user2.errors[:email]).to include ("Email has already been taken")
  end

   
  it "Password need to be minimum lenght" do
    @user = User.new password:"111"
    expect(@user.password).to have_attributes(minimum:5)
    @user.errors.full_messages
  end
   
    


end
