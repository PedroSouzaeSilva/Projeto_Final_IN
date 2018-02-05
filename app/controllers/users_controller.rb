class UsersController < ApplicationController
  before_action :usuario_nao_logado, except: [:new, :create]
  before_action :usuario_logado, only: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :correct_user_or_admin, only: [:edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
      @user = User.new(user_params)

      if @user.save
        flash[:notice] = "Seja bem vindo(a) ao sistema!"
		log_in @user
      else
        flash.now[:alert] = "Algo errado aconteceu."
        render "new"
      end
    end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        uo = UserOccupation.new(user_id: @user.id, occupation_id: params[:occupation_id])
        uo.save
        ud = UserDirection.new(user_id: @user.id, direction_id: params[:direction_id])
        ud.save
        format.html { redirect_to @user, notice: 'Peril atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Membro excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
    end

    def correct_user_or_admin
      if !current_user.admin && current_user != @user
        flash[:alert] = "Não permitido."
        redirect_to user_path(id: current_user.id)
      elsif current_user == @user && current_user.admin
        flash[:alert] = "Não permitido."
        redirect_to user_path(id: current_user.id)
      end
    end
end
