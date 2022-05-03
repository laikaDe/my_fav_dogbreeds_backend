class DogbreedsController < ApplicationController
  before_action :set_dogbreed, only: [:show, :update, :destroy]

  # GET /dogbreeds
  def index
    @dogbreeds = Dogbreed.all
    render json: @dogbreeds
  end

  # GET /dogbreeds/1
  def show
    render json: @dogbreed
  end

  def search
    @dogbreeds = Dogbreed.where("name LIKE ?", "%" + params[:q] + "%")
    render json: @dogbreeds
  end

  # POST /dogbreeds
  def create
    @dogbreed = Dogbreed.new(dogbreed_params)

    if @dogbreed.save
      render json: @dogbreed, status: :created, location: @dogbreed
    else
      render json: @dogbreed.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dogbreed
      @dogbreed = Dogbreed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dogbreed_params
      params.require(:dogbreed).permit(:bred_for, :breed_group, :height, :weight, :image, :life_span, :name, :origin, :temperament)
    end
end
