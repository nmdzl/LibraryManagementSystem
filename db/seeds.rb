# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.create(name: "Example Student_Admin",
                email: "example@railstutorial.org",
                password: "foobar",
                password_confirmation: "foobar",
                admin: true)


99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  Student.create(name: name,
                 email: email,
                 password: password,
                 password_confirmation:password)
end


20.times do
  title = Faker::Book.title
  authors = Faker::Book.author
  subject = Faker::Book.genre
  special_collection = Faker::Boolean.boolean(true_ratio: 0.1)
  published = Faker::Date.between(from: 30.years.ago, to: Date.today)
  Book.create(title: title,
              authors: authors,
              subject: subject,
              special_collection: special_collection,
              published: published)
end

