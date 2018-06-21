class WeatherController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @current_weathers = CurrentWeather.uptodate(@user.current_weathers)
  end

  def create
    zipcode = params[:zipcode]
    new_current_weather = CurrentWeather.new_from_zip(zipcode)
    if !new_current_weather
      flash[:notice] = "Zipcode Not Found, Try Again!"
      redirect_to new_weather_path
    elsif UserWeatherLocation.duplicate_check(current_user, new_current_weather)
      flash[:notice] = "Already added that Location"
      redirect_to new_weather_path
    else
      new_current_weather.save
      UserWeatherLocation.create({user_id: current_user.id, current_weather_id: new_current_weather.id})
      flash[:notice] = "Location Sucessfully Added"
      redirect_to weather_index_path
    end
  end

  def new

  end
end

private

def current_weather_params
  params.require(:current_weather).permit()
end
