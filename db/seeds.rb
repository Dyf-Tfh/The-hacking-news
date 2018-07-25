# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do |index|
  User.create(name: Faker::Name.name)
  Url.create(url: Faker::Internet.url, user_id: index)
  RootComment.create(
    title: Faker::DragonBall.character,
    content: Faker::ChuckNorris.fact,
    url_id: index,
    user_id: User.order("RANDOM()").first.id
  )
end
5.times do
  ChildComment.create(
    content: Faker::ChuckNorris.fact,
    title: Faker::DragonBall.character,
    rootcomment_id: RootComment.order("RANDOM()").first.id,
    user_id: User.order("RANDOM()").first.id
  )
end
# créer 10 child comment à partir des child déjà créés
# mais je crois que ça marche pas
# vu que les child sont 
10.times do
  ChildComment.create(
    content: Faker::ChuckNorris.fact,
    title: Faker::DragonBall.character,
    rootcomment_id: ChildComment.order("RANDOM()").first.id,
    user_id: User.order("RANDOM()").first.id
  )
end
