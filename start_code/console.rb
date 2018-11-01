require_relative( 'models/movie' )
require_relative( 'models/casting' )
require_relative( 'models/star' )

# require( 'pry-byebug' )

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

star1 = Star.new({ 'first_name' => 'Brad', 'last_name' => 'Pitt' })
star1.save()
star2 = Star.new({ 'first_name' => 'Liam', 'last_name' => 'Neeson' })
star2.save()
star3 = Star.new({ 'first_name' => 'Mia', 'last_name' => 'Farrow' })
star3.save()

 star3.last_name

movie1 = Movie.new({ 'title' => 'Troy', 'genre' => 'history'})
movie1.save()
movie2 = Movie.new({ 'title' => 'Taken', 'genre' => 'action'})
movie2.save()
movie3 = Movie.new({ 'title' => 'Rosemary_baby', 'genre' => 'horror'})
movie3.save()

 movie3.title

 casting1 = Casting.new({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 200000})
 casting1.save()
 casting2 = Casting.new({ 'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 100000})
 casting2.save()
 casting3 = Casting.new({ 'movie_id' => movie3.id, 'star_id' => star3.id, 'fee' => 300000})
 casting3.save()

#
# p casting2.movie_id
# p casting1.star_id

p movie1.stars
p star1.movies
