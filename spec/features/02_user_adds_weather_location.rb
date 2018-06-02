require 'rails_helper'


feature "As an authenticated user
I want to be able to add weather locations to my homepage
so that i can see the current weater" do

# Acceptance Criteria
# [] I can specify city or zipcode
# [] I'm preseneted with an error if the query is invalid


# Updates:
# I can select from a table of results matches to the cities

def login
  user = FactoryBot.create(:user)
  visit '/users/sign_in'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log in'
end

  it "allows user to add a location" do
    login
    click_link 'Add Weather Station'
    #fill in form
  end

  it 'gives errors when add location fails' do

  end
end
