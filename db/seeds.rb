# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do
  provider = %w(facebook google_oauth2 vkontakte).sample
  uid      = Faker::Number.number(10)
  name     = Faker::Name.name
  image    = Faker::Avatar.image
  Author.create(provider: provider, uid: uid, name: name, image: image)
end

authors = Author.order(:created_at).take(3)
50.times do
  body = Faker::Hipster.sentence(3, false, 4)
  authors.each { |author| author.posts.create!(body: body) }
end

posts = Post.order(:created_at).take(10)
posts.each do |post|
  authors.each do |author|
    body = Faker::Hipster.sentence(3)
    author.comments.create!(post: post, body: body)
  end
end
