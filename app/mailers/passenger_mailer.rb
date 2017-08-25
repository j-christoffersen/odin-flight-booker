class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'
  
  def thank_you(passenger, booking)
    @passenger = passenger
    @url = booking_url booking
    mail(to: @passenger.email, subject: 'You Have Booked Your Flight!')
  end
end
