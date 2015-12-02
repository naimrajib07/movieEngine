class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  respond_to :html

  def index
    @movies = Movie.includes(:gallery => :pictures).order(:updated_at).page params[:page]
    respond_with(@movies)
  end

  def show
    respond_with(@movie)
  end

  def new
    @movie = Movie.new
    gallery = @movie.build_gallery
    picture = gallery.pictures.build
    respond_with(@movie)
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user = current_user
    @movie.save
    respond_with(@movie)
  end

  def update
    @movie.update(movie_params)
    respond_with(@movie)
  end

  def destroy
    @movie.destroy
    respond_with(@movie)
  end

  private
  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:name, :description, :director, :user_id, :genre,
                                  gallery_attributes: [:id, :_destroy,
                                                       pictures_attributes: [:id, :avatar, :_destroy]])
  end
end
