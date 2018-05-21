require 'rails_helper'

describe "the signin process", type: :feature do

  it "signs me in" do
    user = FactoryBot.create(:user)
    visit '/users/sign_in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password


    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'

  end
end
