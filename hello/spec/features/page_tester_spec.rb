require 'rails_helper'

describe "PageTesters", js: :true do
  let(:user) { create(:user) }

  it "signs me in" do

    sign_in user

    visit '/posts'

    expect(page).to have_content("posts")
    expect(page).to have_content(user.email)

  #  save_and_open_screenshot
  end
end
