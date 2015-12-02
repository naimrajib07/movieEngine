module MoviesHelper
 def movie_creator?(movie)
   current_user == movie.user
 end

  def movie_cover_picture(gallery)
    gallery.pictures.present? ? gallery.pictures.first.avatar : 'defualt.jpg'
  end
end
