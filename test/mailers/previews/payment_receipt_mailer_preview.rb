# Preview all emails at http://localhost:3000/rails/mailers/payment_receipt_mailer
class PaymentReceiptMailerPreview < ActionMailer::Preview
  def payment_receipt_preview
    @receipt = {
      price: 6000,
      quantity: 2,
      discount_code: '12345678',
      discount_percent: 0.50,
      discount_one_time: true,
      total: 90
    }
    PaymentReceiptMailer.payment_receipt(User.find_by(uuid: "14d7a5a5-8538-4986-9fe6-48f31d9f28b9"), @receipt)
  end
end
