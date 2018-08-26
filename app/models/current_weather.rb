class CurrentWeather < ApplicationRecord
  alias_attribute :city_id, :id
  self.primary_key = "id"

  has_many :user_weather_locations
  has_many :users, through: :user_weather_locations, source: :city_id

  def self.new_from_zip(zip)
    weather = $open_weather_api.current(zip: zip)
    self.new(weather)
  end

  def self.create_from_zip(zip)
    self.new_from_zip(zip).save
  end

  def uptodate?
    if Time.now - Time.at((self.dt)) < (3600)
      return true
    else
      return false
    end
  end

  def uptodate
    if !uptodate?
      return self.update($open_weather_api.current(id: self.city_id))
    else
      return self
    end
  end

  def self.uptodate(current_weathers)
    output = []
    current_weathers.each do |current_weather|
      output << current_weather.uptodate
    end
    return output
  end

  def current_temp
    return (('%.f' % (self.main["temp"]*9/5-459.67))+'°F')
  end

  def low_temp
    return (('%.f' % (self.main["temp_min"]*9/5-459.67))+'°F')
  end

  def high_temp
    return (('%.f' % (self.main["temp_max"]*9/5-459.67))+'°F')
  end

  def timestamp
    return self.updated_at.localtime.strftime("%m/%d/%Y %I:%M%p")
  end


  def description
    description = ""
    self.weather.each do |info|
      description << info["description"]
    end
    return description
  end

  def weather_icon
    $open_weather_api.icon_url(self['weather'].first['icon'])
  end

end
