require('pry')
require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')

star1 = Star.new({"first_name" => "Antonio", "last_name" => "Banderas"})

star1.save()
star2 = Star.new({"first_name" => "Penelope", "last_name" => "Cruz"})
star2.save()
star3 = Star.new({"first_name" => "Javier", "last_name" => "Bardem"})
star3.save()

movie1 = Movie.new({"title" => "El Zorro", "genre" => "Adventure", "rating" => "7"})
movie1.save()
movie2 = Movie.new({"title" => "Vicky, Cristina, Barcelona", "genre" => "Drama", "rating" => "9"})
movie2.save()
movie3 = Movie.new({"title" => "Skyfall", "genre" => "Action", "rating" => "8"})
movie3.save()


casting1 = Casting.new({ "movie_id" => movie1.id, "star_id" => star1.id })
casting1.save()
casting2 = Casting.new({ "movie_id" => movie2.id, "star_id" => star2.id })
casting2.save()
casting3 = Casting.new({ "movie_id" => movie3.id, "star_id" => star3.id })
casting3.save()
casting4 = Casting.new({ "movie_id" => movie2.id, "star_id" => star3.id })
casting4.save()





binding.pry
nil
