class PaymentReceiptMailer < ApplicationMailer
  default from: "mymemorial.help@gmail.com"

  def payment_receipt(user, payment)
    @user = user
    @payment = payment
    mail(to: @user.email, subject: "Memorial payment confirmation")
  end
end
