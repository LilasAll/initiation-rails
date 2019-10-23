# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Movie.destroy_all

def random
	genre_list = Array.new
	genre_list = ["action", "horreur", "comedie", "drame"].shuffle
	genre = genre_list.first
	return genre
end

100.times do
	movie = Movie.create!(name: Faker::Book.title, year: Faker::Commerce.price(range: 1900..2020, as_string: false), genre: random, synopsis: Faker::Lorem.paragraph,director: Faker::Name.name,allocine_rating: Faker::Commerce.price(range: 0..5.0, as_string: true),already_seen: false)
end