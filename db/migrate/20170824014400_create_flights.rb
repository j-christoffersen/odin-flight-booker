class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :depart_airport_id
      t.integer :arrive_airport_id
      t.datetime :depart_time
      t.integer :duration

      t.timestamps
    end
  end
end
