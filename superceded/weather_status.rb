class WeatherStatus < ApplicationRecord
  # BASE_URL = 'http://api.geonames.org/findNearByWeatherJSON?&username=ethunk&'
  # ATTRS = ["id", "zipcode_id", "clouds", "clouds_code", "country_code", "datetime", "dew_point", "lat", "lng", "observation", "station_name", "temperature", "weather_condition", "wind_direction", "wind_speed", "created_at", "updated_at"]
  # validates :zipcode_id, presence: true
  # validates :datetime, presence: true
  #
  # belongs_to :zipcode
  #
  # def self.new_weather(zipcode)
  #   lng = 'lng=' + zipcode.lng
  #   lat = 'lat=' + zipcode.lat
  #   data = JSON.parse(open(BASE_URL + lng + '&' + lat).read)
  #   object = self.new
  #   ATTRS.each do |attr|
  #     object[attr] = data['weatherObservation'][attr.camelcase]
  #   end
  #   return object
  # end
  #
  # def self.create_weather(zipcode)
  #   lng = 'lng=' + zipcode.lng
  #   lat = 'lat=' + zipcode.lat
  #   data = JSON.parse(open(BASE_URL + lng + '&' + lat).read)
  #   object = self.new
  #   ATTRS.each do |attr|
  #     object[attr] = data['weatherObservation'][attr.camelcase]
  #   end
  #   object.save
  # end

end
