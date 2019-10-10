# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Library.create(name: "James B. Hunt Jr. Library",
               location: "1070 Partners Way, Raleigh, NC 27606",
               max_day: 90,
               overdue_fine: 9.99)

Library.create(name: "D. H. Hill Jr. Library",
               location: "2 W Broughton Dr, Raleigh, NC 27695",
               max_day: 90,
               overdue_fine: 9.99)

Book.create(title: "Harry Potter",
            authors: "J.K. Rowling",
            subject: "Fiction",
            special_collection: false,
            published: "Bloomsbury Publishing, [1997]",
            language: "English",
            associated_library: "The James B. Hunt Jr. Library",
            isbn: "9780747532743",
            edition: "2nd",
            summary: "Adaptation of the first of J.K. Rowling's popular children's novels about Harry Potter, a boy who learns on his eleventh birthday that he is the orphaned son of two powerful wizards and possesses unique magical powers of his own. He is summoned from his life as an unwanted child to become a student at Hogwarts, an English boarding school for wizards. There, he meets several friends who become his closest allies and help him discover the truth about his parents' mysterious deaths.",
            library_id: 1)

Book.create(title: "Engineering software as a service",
            authors: "Armando Fox; David Patterson",
            subject: "Computer Science",
            special_collection: false,
            published: "San Francisco, CA : Strawberry Canyon LLC, [2014]",
            language: "English",
            associated_library: "The James B. Hunt Jr. Library",
            isbn: "9780984881239",
            edition: "2nd",
            summary: "A one-semester college course in software engineering focusing on cloud computing, software as a service (SaaS), and Agile development using Extreme Programming (XP). This book is neither a step-by-step tutorial nor a reference book. Instead, our goal is to bring a diverse set of software engineering topics together into a single narrative, help readers understand the most important ideas through concrete examples and a learn-by-doing approach, and teach readers enough about each topic to get them started in the field. Courseware for doing the work in the book is available as a virtual machine image that can be downloaded or deployed in the cloud. A free MOOC (massively open online course) at saas-class.org follows the book's content and adds programming assignments and quizzes.",
            library_id: 1)




20.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@ncsu.edu"
  password = "password"
  educational_level = ["undergraduate", "master", "phd"][n%3]
  max_book = [2, 4, 6][n%3]
  Student.create(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password,
                 educational_level: educational_level,
                 overdue_fine: 0)
end


10.times do
  isbn = Faker::PhoneNumber.subscriber_number(length: 13)
  title = Faker::Book.title
  authors = Faker::Book.author
  subject = Faker::Book.genre
  #language = Faker::Nation.language
  special_collection = Faker::Boolean.boolean(true_ratio: 0.1)
  published = Faker::Address.city + Faker::Book.publisher + " [" + Faker::Number.between(from: 1980, to: 2019).to_s + "]"
  Book.create(isbn: isbn,
              title: title,
              authors: authors,
              subject: subject,
              language: "English",
              associated_library: "The James B. Hunt Jr. Library",
              edition: "1st",
              special_collection: special_collection,
              published: published,
              library_id: 1)
end



Student.create(name: "Student_Admin",
               email: "team587@ncsu.edu",
               password: "111111",
               password_confirmation: "111111",
               max_book: 2,
               admin: true)
