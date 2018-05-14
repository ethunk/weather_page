class Zipcode < ApplicationRecord
  require 'JSON'
  require 'open-uri'
  require 'pry'
  BASE_URL = 'http://api.geonames.org/postalCodeLookupJSON?&country=US&username=ethunk&postalcode='

  validates :zipcode, presence: true
  validates :lng, presence: true
  validates :lat, presence: true

  has_one :weather_status

  def self.new_by_zipcode(zipcode)
    data = JSON.parse(open(BASE_URL + zipcode).read)
    self.new({zipcode: zipcode, lng: data['postalcodes'][0]['lng'], lat: data['postalcodes'][0]['lat']})
  end

  def self.create_by_zipcode(zipcode)
    data = JSON.parse(open(BASE_URL + zipcode).read)
    self.create({zipcode: zipcode, lng: data['postalcodes'][0]['lng'], lat: data['postalcodes'][0]['lat']})
  end

end
