class EngineersController < ApplicationController
  def index
    @all_engineers = Engineer.all
  end

  def show
    @engineer = Engineer.find_by( id: params['id'] )
  end

  def new
    @engineer = Engineer.new
  end

  def create
    engineer = Engineer.create ( engineer_strong_params )
    redirect_to "/engineers/#{engineer.id}"
  end

  def edit
    @engineer = Engineer.find_by( id: params['id'] )
  end

  def update
    engineer = Engineer.find_by( id: params['id'] )
    engineer.update ( engineer_strong_params )
    redirect_to "/engineers/#{engineer.id}"
  end

  def destroy
    engineer = Engineer.find_by( id: params['id'] )
    engineer.destroy
    redirect_to "/engineers"
  end

  private
  def engineer_strong_params
    params.require(:engineer).permit(:name, :bio, :image)
  end
end
