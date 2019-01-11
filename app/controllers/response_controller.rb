class ResponseController < ApplicationController
  include SendGrid

  def support
    from = Email.new(email: 'memorial@memorial.com')
    to = Email.new(email: 'mitchjmccutchen+support@gmail.com')
    subject = '[SUPPORT] ' +  params[:subject]
    content = Content.new(type: 'text/plain', value: 'email: ' + params[:email] + '   ' + params[:content])
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    render json: {status: response.status_code, body: response.body, headers: response.headers}
  end

  def bug
    from = Email.new(email: 'memorial@memorial.com')
    to = Email.new(email: 'mitchjmccutchen+bug@gmail.com')
    subject = '[BUG] ' +  params[:subject]
    content = Content.new(type: 'text/plain', value: 'email: ' + params[:email] + '   ' + params[:content])
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    render json: {status: response.status_code, body: response.body, headers: response.headers}
  end

end
