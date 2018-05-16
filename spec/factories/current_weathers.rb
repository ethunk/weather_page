FactoryBot.define do
  factory :current_weather do
    coord { {lon: -86.16, lat: 39.77} }
    weather { [{"id"=>802, "main"=>"Clouds", "description"=>"scattered clouds", "icon"=>"03d"}] }
    base "stations"
    main { {"temp"=>303.36, "pressure"=>1015, "humidity"=>48, "temp_min"=>302.15, "temp_max"=>305.15} }
    wind { {"speed"=>3.1, "deg"=>310, "gust"=>9.3} }
    clouds {{"all"=>40}}
    rain nil
    snow nil
    dt "1526244300"
    sequence(:id) { |n| "425941#{n}" }
    name "Indianapolis"
    cod "200"
    visibility "16093"
    sys { {"type"=>1, "id"=>1037, "message"=>0.1652, "country"=>"US", "sunrise"=>1526207460, "sunset"=>1526259092} }
  end
end
