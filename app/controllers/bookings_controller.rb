class BookingsController < ApplicationController
  def new
    @flight = Flight.find params[:flight_id]
    @bookings = Array.new(params[:passengers].to_i){ @flight.bookings.build }
  end
  
  def create
    flight = Flight.find params[:flight_id]
    booking_params = params.permit(:name => [])
    params[:name].each do |i, name|
      passenger = Passenger.find_or_create_by(name: name, email: params[:email][i])
      unless flight.passengers.find_by(name: name)
        flight.passengers << passenger
        PassengerMailer.thank_you(passenger, passenger.bookings.where(flight: flight).first).deliver_now!
        flight.save
      end
    end
    redirect_to root_url
  end
  
  def show
    @booking = Booking.find params[:id]
  end
  
end
