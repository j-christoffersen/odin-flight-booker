class Airport < ApplicationRecord
  has_many :departures, foreign_key: "depart_airport_id", class_name: "Flight"
  has_many :arrivals, foreign_key: "arrive_airport_id", class_name: "Flight"
end
