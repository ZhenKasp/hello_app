require 'rails_helper'


RSpec.feature "PagesTesters", type: :feature do
  before :each do
    @user = User.new(email: 'user@example.com', password: 'password')
  end

  it "Signed in successfully." do
      visit '/users/sign_in'

      p page.body


    click_button 'Log in'
    fill_in "user_email", with: 'user@example.com'
    fill_in 'user_password', with: 'password'


    #within("#users"){ fill_in("user_email", with: 'user@example.com')}
    #fill_in "#user_email", with: "user@example.com"
    #fill_in 'user_password', with: 'password'


      expect(page).to have_content 'Signed in successfully.'
    end

end
