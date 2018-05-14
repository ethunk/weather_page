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

  has_many :user_weather_locations
  has_many :users, through: :user_weather_locations, source: :city_id

end
