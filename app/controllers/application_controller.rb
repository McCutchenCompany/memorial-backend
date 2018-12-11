class ApplicationController < ActionController::API

  def status
    render json: {msg: 'Status, it is working!'}, status: 200
  end
  
end
