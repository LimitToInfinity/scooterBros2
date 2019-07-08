class BrosController < ApplicationController
  
  before_action :find_bro, only: [:show, :edit, :update, :destroy]
  
  def index
    if params[:search]
      @bros = Bro.where("name LIKE ?", "%#{params[:search]}%")
    else
      @bros = Bro.all
    end
  end

  def show
  end

  def new
    @bro = Bro.new
    @bro.scooters.build
  end
  
  def create
    @bro = Bro.new(allowed_params)
    if @bro.valid?
      @bro.save
      redirect_to bro_path(@bro)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @bro.destroy
    redirect_to bros_path
  end

  private

  def allowed_params
    params.require(:bro).permit(:name, :age, scooters_attributes: [:brand])
  end

  def find_bro
    @bro = Bro.find(params[:id])
  end
end
