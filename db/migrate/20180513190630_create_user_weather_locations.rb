class CreateUserWeatherLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_weather_locations do |t|
      t.integer :user_id
      t.integer :current_weather_id
      t.timestamps
    end
  end
end
