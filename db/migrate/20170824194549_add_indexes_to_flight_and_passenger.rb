class AddIndexesToFlightAndPassenger < ActiveRecord::Migration[5.1]
  def change
    add_index :flights, :depart_time
    add_index :flights, :depart_airport_id
    add_index :flights, :arrive_airport_id
    
    add_index :passengers, :name
    
    add_index :bookings, [:flight_id, :passenger_id], unique: true
  end
end
