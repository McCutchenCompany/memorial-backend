# Preview all emails at http://localhost:3000/rails/mailers/response_mailer
class ResponseMailerPreview < ActionMailer::Preview
  def response_support_email_preview
    ResponseMailer.response_support_email(User.find_by(uuid: "14d7a5a5-8538-4986-9fe6-48f31d9f28b9"), "Test subject", "This is a test content body to be displayed in the preview")
  end

  def response_bug_email_preview
    ResponseMailer.response_bug_email(User.find_by(uuid: "14d7a5a5-8538-4986-9fe6-48f31d9f28b9"), "Test subject", "This is a test content body to be displayed in the preview")
  end
end
