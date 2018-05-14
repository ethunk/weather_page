require 'rails_helper'

RSpec.describe WeatherController, type: :controller do

  describe "GET #index" do
    def sign_in
      User.make(email: 'user@example.com', password: 'password', home_zip: '02138')

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
