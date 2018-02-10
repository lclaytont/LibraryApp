 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stephen = Author.create!(name: "Stephen King")
cormac = Author.create!(name: "Cormac McCarthy")
morrison = Author.create!(name: "Toni Morrison")
ray = Author.create!(name: "Ray Carver")
asimov = Author.create!(name: "Issac Asimov")
lee = Author.create!(name: "Stan Lee")

puts "Creates Authors"

scifi = Genre.create!(category: "Science Fiction")
horror = Genre.create!(category: "Horror")
western = Genre.create!(category: "Western")
comicbook = Genre.create!(category: "Comic Book")
literature = Genre.create!(category: "Literature")

puts "Creates Genres"

Book.create!(
  title: "The Stand",
  author_id: stephen.id,
  genre_id: horror.id
)

Book.create!(
  title: "Bluest Eye",
  author_id: morrison.id,
  genre_id: literature.id
)

Book.create!(
  title: "I, Robot",
  author_id: asimov.id,
  genre_id: scifi.id
)

Book.create!(
  title: "Spiderman",
  author_id: lee.id,
  genre_id: comicbook.id
)

Book.create!(
  title: "No Country for Old Men",
  author_id: cormac.id,
  genre_id: western.id
)

Book.create!(
  title: "What We Talk About When We Talk About Love",
  author_id: ray.id,
  genre_id: literature.id
)

puts "Books Created"
