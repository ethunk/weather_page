class WeatherController < ApplicationController
  before_action :authenticate_user!

  def index
    user = current_user
    current_weathers = user.current_weathers
  end
end
