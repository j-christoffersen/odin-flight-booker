class Flight < ApplicationRecord
  belongs_to :depart_airport, class_name: "Airport"
  belongs_to :arrive_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings
  
  def arrive_time
    depart_time + duration
  end
end
