require 'rails_helper'

RSpec.describe User, type: :model do
<<<<<<< HEAD
  describe 'Validations' do
    before do
      @user = User.new(first_name: 'Stan', last_name: "Marsh", email: "stanmarsh@southpark.co", password: "12345", confirmation_password: "12345")
    end

    it 'should be valid when password and confirmation_password are matching' do
      @user.validate
      expect(@user.password).to eq(@user.confirmation_password)
    end
  

    # it 'should be invalid when password and confirmation_password are not matching' do
    #   @user.confirmation_password = nil
    #   @user.validate
    #   expect(@user.errors.full_messages).to include("Passwords do not match")
    # end

    # it 'should not be valid without an email' do
    #   @user.email = nil
    #   @user.validate
    #   expect(@user.errors.full_messages).to include("Email can't be blank")
    # end

    # it 'should have an email that is unique' do
    #   @user2 = User.create!(first_name: "Eric", last_name: "Cartman", email: "ericcartman@southpark.co", password: "123abc", confirmation_password: "123abc")
    #   expect(@user2).to_not be_valid
    # end
  
    # it 'should not be valid without a first name' do
    #   @user.first_name = nil
    #   @user.validate
    #   expect(@user.errors.full_messages).to include("Please enter a first name")
    # end
  
    # it 'should not be valid without a last name' do
    #   @user.last_name = nil
    #   @user.validate
    #   expect(@user.errors.full_messages).to include("Please enter a last name")
    # end

    
  end
  
end
=======
  pending "add some examples to (or delete) #{__FILE__}"
end
>>>>>>> feature/user-auth
