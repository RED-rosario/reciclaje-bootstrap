
require 'faker'
for m in 1..100 do
 name = Faker::Movie.title
 director = Faker::Name.name
 summary = Faker::Lorem.sentence
 Movie.create({name: name, director: director, summary: summary})
end
