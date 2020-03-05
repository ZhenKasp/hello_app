require 'rails_helper'

RSpec.describe User, type: :model do
  context "test" do
    it "dose something" do
      user = User.create(email:"test@email.t", password:"123456", first_name: "first_name", last_name: "last_name")
      someone = user


      expect(user.reload).to eq(someone)
    end
  end
end
