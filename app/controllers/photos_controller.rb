class PhotosController < ApplicationController
  def index
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :description)
  end

end
