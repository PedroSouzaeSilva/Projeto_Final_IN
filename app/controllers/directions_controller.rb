class DirectionsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]


  def index
    @directions = Direction.all
  end

  def show
    #@users=User.where(:direction_id => @direction.id)
  end
end
