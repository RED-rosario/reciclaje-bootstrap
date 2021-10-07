require 'json'
require 'open-uri'

peliculas = File.read(Rails.root.join('db', 'peliculas.json'))

Movie.delete_all if Rails.env.development?

movies = JSON.parse(peliculas)

puts 'seeding data...'

    movies.each do |movie|
        Movie.create!(name: movie['Title'], director: movie['Director'], summary: movie['Plot'])
    end
puts '********done*********' 

#require 'faker'
#for m in 1..100 do
# name = Faker::Movie.title
# director = Faker::Name.name
# summary = Faker::Lorem.sentence
# Movie.create({name: name, director: director, summary: summary})
#end
