FactoryBot.define do
  factory :user_weather_location do
    user_id '1'
    current_weather_id '345662'
    
    association :user, factory: :user
    association :current_weather, factory: :current_weather
  end
end
