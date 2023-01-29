# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Book.create!(title: "Book #1", description: "My First Book", admin_user_id: 1)
Book.create!(title: "Book #2", description: "My Second Book", admin_user_id: 1)

Chapter.create!(title: "Chapter #1", content: "Lorem Ipsum is simply dummy text of the printing and typesetting", book_id: 1)
Chapter.create!(title: "Chapter #2", content: "Lorem Ipsum is simply dummy text of the printing and typesetting", book_id: 1)
Chapter.create!(title: "Chapter #3", content: "Lorem Ipsum is simply dummy text of the printing and typesetting", book_id: 2)