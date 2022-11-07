class CreatePollingStations < ActiveRecord::Migration[6.1]
  def change
    create_table :polling_stations do |t|
      t.string :name
      t.integer :ward_id 
    end
  end
end
