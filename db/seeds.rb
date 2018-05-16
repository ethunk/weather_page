# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CurrentWeather.create(coord: {"lon"=>-86.16, "lat"=>39.77},
  weather: [{"id"=>802, "main"=>"Clouds", "description"=>"scattered clouds", "icon"=>"03d"}],
  base: "stations",
  main: {"temp"=>303.36, "pressure"=>1015, "humidity"=>48, "temp_min"=>302.15, "temp_max"=>305.15},
  wind: {"speed"=>3.1, "deg"=>310, "gust"=>9.3},
  clouds: {"all"=>40},
  rain: nil,
  snow: nil,
  dt: "1526244300",
  id: "4259418",
  name: "Indianapolis",
  cod: "200",
  visibility: "16093",
  sys: {"type"=>1, "id"=>1037, "message"=>0.1652, "country"=>"US", "sunrise"=>1526207460, "sunset"=>1526259092})
CurrentWeather.create(  coord: {"lon"=>-85.14, "lat"=>41.08},
  weather: [{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01d"}],
  base: "stations",
  main: {"temp"=>294.59, "pressure"=>1016, "humidity"=>72, "temp_min"=>292.15, "temp_max"=>297.15},
  wind: {"speed"=>4.86, "deg"=>270},
  clouds: {"all"=>1},
  rain: nil,
  snow: nil,
  dt: "1526243700",
  id: "4920423",
  name: "Fort Wayne",
  cod: "200",
  visibility: "16093",
  sys: {"type"=>1, "id"=>1023, "message"=>0.0051, "country"=>"US", "sunrise"=>1526207017, "sunset"=>1526259047})

data = UserWeatherLocation.new(user_id: 2, current_weather_id: 4920423)
