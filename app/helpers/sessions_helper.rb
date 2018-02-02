module SessionsHelper
  def log_in(user)
	  session[:user_id] = user.id
	  redirect_to user
	end
	
	def current_user
	  nil || User.find_by(id: session[:user_id])
	end
	
	def logged_in?
	  !current_user.nil?
	end
	
	def log_out
	  session.delete(:user_id)
	  redirect_to login_path
	end
  
  def usuario_logado
    if logged_in?
      flash[:alert] = "Não permitido."
      redirect_to current_user
    end
  end
	
  def usuario_nao_logado
    if !logged_in?
      flash[:alert] = "Por favor faça login."
      redirect_to login_path
    end
  end

end
