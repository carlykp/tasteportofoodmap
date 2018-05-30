class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.confirmation.subject
  #
  def confirmation(booking)
    @booking = booking

    mail(
      to:       @booking.email,
      subject:  "Your booking for #{@booking.restaurant.name} has been received"
    )
  end

  def notification(booking)
    @booking = booking

    mail(
      to:       "carly@tasteporto.com",
      subject:  "New request: #{@booking.restaurant.name}"
    )
  end
end
