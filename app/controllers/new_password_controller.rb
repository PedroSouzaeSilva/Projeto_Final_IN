class NewPasswordController < ApplicationController
# GET new_password/search
 def search
 end

 # POST  new_password/search
  def recovery
    user = User.find_by(email: params[:user][:email])
    if user

        password = Passgen.generate(:length => 6)
        user.password = password
        user.password_confirmation = password
        user.save

        UserMailer.forgot(user, password).deliver_now
        flash[:notice] = "Email com instruções de recuperação enviado"
        redirect_to login_path
    else
      flash.now[:alert] = "Usuario não encontrado"
      render "search"
    end
  end
end
