class SessionsController < ApplicationController
  before_action :usuario_logado, only: [:new, :create]
  
  def new
  end
 
 def create
  user = User.find_by(email: params[:sessions][:email])
  if user && user.authenticate(params[:sessions][:password])
    log_in user
  else
    flash.now[:alert] = "Usuário ou senha incorretos."
    render "new"
  end
 end
	
  def destroy
    log_out
  end

end
