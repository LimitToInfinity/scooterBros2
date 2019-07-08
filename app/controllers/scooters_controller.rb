class ScootersController < ApplicationController
  
  before_action :find_scooter, only: [:show, :edit, :update, :destroy]
  
  def index
    if params[:search]
      @scooters = Scooter.where("name LIKE ?", "%#{params[:search]}%")
    else
      @scooters = Scooter.all
    end
  end

  def show
  end

  def new
    @scooter = Scooter.new
  end
  
  def create
    @scooter = Scooter.new(allowed_params)
    if @scooter.valid?
      @scooter.save
      redirect_to scooter_path(@scooter)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @scooter.destroy
    redirect_to scooters_path
  end

  private

  def allowed_params
    params.require(:scooter).permit(:brand)
  end

  def find_scooter
    @scooter = Scooter.find(params[:id])
  end
end
