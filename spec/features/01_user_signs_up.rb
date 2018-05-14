require 'rails_helper'

describe "the signin process", type: :feature do
  before :each do
    User.make(email: 'user@example.com', password: 'password', home_zip: '02138')
  end

  it "signs me in" do
    visit '/users/sign_in/new'  
    within("#session") do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end
