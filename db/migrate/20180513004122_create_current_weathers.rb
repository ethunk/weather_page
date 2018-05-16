class CreateCurrentWeathers < ActiveRecord::Migration[5.1]
  def change
    create_table :current_weathers, {id: false}  do |t|
      t.json :coord
      t.json :weather
      t.string :base
      t.json :main
      t.json :wind
      t.json :clouds
      t.json :rain
      t.json :snow
      t.integer :dt
      t.integer :id, null: false, index: {unique: true}
      t.string :name
      t.string :cod
      t.string :visibility
      t.json :sys
      t.timestamps
    end
  end
end
