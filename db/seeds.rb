# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning Database"
Movie.destroy_all

# puts "creating movies"

# 100.times do
#   movie = Movie.create(
#     title: Faker::Movie.title,
#     overview: Faker::Movie.quote,
#     poster_url: Faker::Name.name,
#     rating: rand(1..5)
#   )
#   puts "movie with id: #{movie.id} has been created"
# end

puts "creating bookmarks"

20.times do
  bookmark = Bookmark.create(
    comment: Faker::Quote.matz,
    movie_id: rand(100..170),
    list_id: rand(1..20)
  )
  puts "bookmark with id: #{bookmark.id} has been created"
  puts "bookmark with comment: #{bookmark.comment} has been created"
  puts "bookmark with Movie_id: #{bookmark.movie_id} has been created"
  puts "bookmark with List_id: #{bookmark.list_id} has been created"

end

# puts "creating lists"

# 20.times do
#   list = List.create(
#     name: Faker::Creature::Animal.name,
#   )
#   puts "list with id: #{list.id} has been created"
# end


puts "finished"
