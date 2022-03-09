class ImagesController < ApplicationController
  before_action :set_image, except: [:index, :create]

  def index
    images = Image.all 
    render json: @images
    # except: [:created_at, :updated_at]
  end

  def create
    image = Image.new(image_params)
    render json: @image
    # except: [:created_at, :updated_at]
  end

  # def new
  #   @image = Image.new
  # end
  
  private
  def set_image
    @image = Image.find_by_id(params[:id])
  end

  def image_params
    params.require(:image).permit(:classification, :user_id)
  end

end

