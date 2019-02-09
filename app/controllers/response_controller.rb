class ResponseController < ApplicationController

  before_action :set_user

  def support
    if @user.present?
      ResponseMailer.response_support_email(@user, params[:email], params[:subject], params[:content]).deliver
    else
      ResponseMailer.response_support_email(nil, params[:email], params[:subject], params[:content]).deliver
    end
    render json: {message: "Email has been sent"}
  end

  def bug
    if @user.present?
      ResponseMailer.response_bug_email(@user, params[:email], params[:subject], params[:content]).deliver
    else
      ResponseMailer.response_bug_email(nil, params[:email], params[:subject], params[:content]).deliver
    end
    render json: {message: "Email has been sent"}
  end


  def set_user
    if request.headers['Authorization'].present?
      token = JsonWebToken.verify(request.headers['Authorization'].split(' ').last)
      @user = User.find_by(auth0_id: token[0]['sub'])
    end 
  end

end
