class EngineersController < ApplicationController
  def index
    @all_engineers = Engineer.all
  end

  def show
    @engineer = Engineer.find_by(id: params['id'])
  end

  def new
  end

  def create

  end

  def edit
  end

  def update

  end
end
