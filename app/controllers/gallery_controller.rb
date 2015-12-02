class GalleryController < ApplicationController
  before_action :set_movie, only: :show

  respond_to :html

  def show
    respond_with(@gallery)
  end

  private
  def set_movie
    @gallery = Gallery.includes(:pictures).find(params[:id])
  end
end
