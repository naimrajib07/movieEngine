# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_1 = User.create!(email: 'user_1@email.com', password: '12345678', password_confirmation: '12345678')

m_1 = Movie.create!(name: 'American Sniper', director: 'Clint Eastwood',
                    description: 'Already skilled with a rifle before he joins the Navy SEALS and departs for Iraq,',
                    genre: 'War', user: user_1)
gal_1 = m_1.create_gallery

(0..4).each do |no|
  Picture.create!(gallery: gal_1)
end

m_2 = Movie.create!(name: 'Birdman or (The Unexpected Virtue of Ignorance)', director: 'Alejandro G. Iñárritu',
                    description: 'Best known to the public as Birdman, the superhero he once played in a series',
                    genre: 'Action', user: user_1)
gal_2 = m_2.create_gallery

(0..4).each do |no|
  Picture.create!(gallery: gal_2)
end
m_3 = Movie.create!(name: 'The Grand Budapest Hotel', director: 'Clint Eastwood',
                    description: 'Best known to the public as Birdman, the superhero he once played in a series',
                    genre: 'Thriler', user: user_1)
gal_3 = m_3.create_gallery

(0..4).each do |no|
  Picture.create!(gallery: gal_3)
end
m_4 = Movie.create!(name: 'Selma', director: 'Clint Eastwood',
                    description: 'Best known to the public as Birdman, the superhero he once played in a series',
                    genre: 'Romance', user: user_1)
gal_4 = m_4.create_gallery

(0..4).each do |no|
  Picture.create!(gallery: gal_4)
end
m_5 = Movie.create!(name: 'The Imitation Game', director: 'Clint Eastwood',
                    description: 'Best known to the public as Birdman, the superhero he once played in a series',
                    genre: 'Sci-Fi', user: user_1)
gal_5 = m_5.create_gallery

(0..4).each do |no|
  Picture.create!(gallery: gal_5)
end
m_6 = Movie.create!(name: 'Boyhood', director: 'Clint Eastwood',
                    description: 'Best known to the public as Birdman, the superhero he once played in a series',
                    genre: 'Drama', user: user_1)
gal_6 = m_6.create_gallery

(0..4).each do |no|
  Picture.create!(gallery: gal_6)
end
m_7 = Movie.create!(name: 'Whiplash', director: 'Clint Eastwood',
                    description: 'Best known to the public as Birdman, the superhero he once played in a series',
                    genre: 'War', user: user_1)
gal_7 = m_7.create_gallery

(0..4).each do |no|
  Picture.create!(gallery: gal_7)
end