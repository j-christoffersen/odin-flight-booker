Flight booker project to practice advanced forms.

From https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-advanced-forms?ref=lnav

This implememntation is slighly different from the spec.: each booking is the relationship between flights and passengers.
It seems the spec called for bookngs to include one flight and potentially multiple passengers, and I did not want to redo the data structure for the app.
I also thik this structure makes more sense as in a practical application an customer might want to cancel their ticket for one passenger but not the others.
This however means there is no show page for the booking after it is submitted because the create action in bookings_controller saves between 1 and 4 bookings.
