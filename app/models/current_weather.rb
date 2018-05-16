class CurrentWeather < ApplicationRecord
  alias_attribute :city_id, :id
  self.primary_key = "id"
  def self.new_from_city(city)
    weather = $open_weather_api.current(city: city)
    self.new(weather)
  end

  def self.create_from_city(city)
    self.new_from_city(city).save
  end

  def uptodate?
    binding.pry
    if Time.now - Time.at((self.dt)) < (3600)
      return true
    else
      return false
    end
  end

  def uptodate
    if !uptodate?
      binding.pry
      self.update($open_weather_api.current(id: self.city_id))
    end
  end

  has_many :user_weather_locations
  has_many :users, through: :user_weather_locations, source: :city_id

end
