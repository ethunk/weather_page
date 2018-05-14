class UserWeatherLocation < ApplicationRecord
  belongs_to :user
  belongs_to :current_weather
end
