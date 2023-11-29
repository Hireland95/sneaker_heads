class TrainersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end
end
