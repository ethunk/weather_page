class UserWeatherLocation < ApplicationRecord
  belongs_to :user
  belongs_to :current_weather

  def self.duplicate_check(user, current_weather)
    binding.pry
    if self.where("user_id = ? and current_weather_id = ?", user.id, current_weather.city_id).count > 0
      return true
    else
      return false
    end
  end

end
