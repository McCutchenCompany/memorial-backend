class ResponseMailer < ApplicationMailer
  default from: "mymemorial.help@gmail.com"

  def response_support_email(user, email, subject, content)
    @user = user
    @content = content
    @email = email
    mail(to: "mymemorial.help+support@gmail.com", subject: "[SUPPORT] #{subject}")
  end

  def response_bug_email(user, email, subject, content)
    @user = user
    @content = content
    @email = email
    mail(to: "mymemorial.help+bug@gmail.com", subject: "[BUG] #{subject}")
  end

end
