class CreateVoters < ActiveRecord::Migration[6.1]
  def change
    create_table :voters do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.date :DOB
      t.integer :id_number
      t.string :polling_station_id
    end
  end
end
