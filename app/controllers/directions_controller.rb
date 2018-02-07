class DirectionsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]


  def index
    @directions = Direction.all
  end

  def show
    #@users=User.where(:direction_id => @direction.id)
  end

  def gp
    d = Direction.find_by(name: "Diretoria de Gerência de Pessoas")
    @assessores=User.find_by_sql("select users.* from users where users.id in (select user_directions.user_id from user_directions where user_directions.direction_id = #{d.id})")
    #Carrega todos os usuarios da dietoria
    #@diretor = @acessores.where(manager: true)[0] #carrega aquele que e da diretoria e tem o acessor como treu
    #@tarefas = Task.where(directorship_id: 3).order(deadline: :desc).paginate(:page => params[:page], :per_page => 10)
    #@task = Task.new
  end

  def marketing
    d = Direction.find_by(name: "Diretoria de Gerência de Marketing")
    @assessores=User.find_by_sql("select users.* from users where users.id in (select user_directions.user_id from user_directions where user_directions.direction_id = #{d.id})")
    #Carrega todos os usuarios da dietoria
    #@diretor = @acessores.where(manager: true)[0] #carrega aquele que e da diretoria e tem o acessor como treu
    #@tarefas = Task.where(directorship_id: 3).order(deadline: :desc).paginate(:page => params[:page], :per_page => 10)
    #@task = Task.new
  end

  def financeiro
    d = Direction.find_by(name: "Diretoria de Gerência de Financeiro")
    @assessores=User.find_by_sql("select users.* from users where users.id in (select user_directions.user_id from user_directions where user_directions.direction_id = #{d.id})")
    #Carrega todos os usuarios da dietoria
    #@diretor = @acessores.where(manager: true)[0] #carrega aquele que e da diretoria e tem o acessor como treu
    #@tarefas = Task.where(directorship_id: 3).order(deadline: :desc).paginate(:page => params[:page], :per_page => 10)
    #@task = Task.new
  end

  def projetos
    d = Direction.find_by(name: "Diretoria de Gerência de Projetos")
    @assessores=User.find_by_sql("select users.* from users where users.id in (select user_directions.user_id from user_directions where user_directions.direction_id = #{d.id})")
    #Carrega todos os usuarios da dietoria
    #@diretor = @acessores.where(manager: true)[0] #carrega aquele que e da diretoria e tem o acessor como treu
    #@tarefas = Task.where(directorship_id: 3).order(deadline: :desc).paginate(:page => params[:page], :per_page => 10)
    #@task = Task.new
  end

  def presidencia
    d = Direction.find_by(name: "Diretoria de Gerência de Presidência")
    @assessores=User.find_by_sql("select users.* from users where users.id in (select user_directions.user_id from user_directions where user_directions.direction_id = #{d.id})")
    #Carrega todos os usuarios da dietoria
    #@diretor = @acessores.where(manager: true)[0] #carrega aquele que e da diretoria e tem o acessor como treu
    #@tarefas = Task.where(directorship_id: 3).order(deadline: :desc).paginate(:page => params[:page], :per_page => 10)
    #@task = Task.new
  end
end