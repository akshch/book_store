# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
l1 = Library.create(name: 'Library 1')
l2 = Library.create(name: 'Library 2')
user_1 = User.create(name: 'User_1')
user_2 = User.create(name: 'User_2')
Book.create(title: 'Book_1', description: 'The description of the book_1', author: 'Author_1', status: Book.statuses[:available], library_id: l1.id)
Book.create(title: 'Book_2', description: 'The description of the book_2', author: 'Author_2', status: Book.statuses[:checked_out], checked_out_by_id: user_1.id, library_id: l1.id)
Book.create(title: 'Book_3', description: 'The description of the book_3', author: 'Author_3', status: Book.statuses[:available], library_id: l2.id)
Book.create(title: 'Book_4', description: 'The description of the book_4', author: 'Author_4', status: Book.statuses[:checked_out], checked_out_by_id: user_2.id, library_id: l2.id)
Book.create(title: 'Book_5', description: 'The description of the book_5', author: 'Author_5', status: Book.statuses[:available], library_id: l1.id)
Book.create(title: 'Book_6', description: 'The description of the book_6', author: 'Author_6', status: Book.statuses[:checked_out], checked_out_by_id: user_1.id, library_id: l2.id)
Book.create(title: 'Book_7', description: 'The description of the book_7', author: 'Author_7', status: Book.statuses[:checked_out], checked_out_by_id: user_2.id, library_id: l1.id)
Book.create(title: 'Book_8', description: 'The description of the book_8', author: 'Author_8', status: Book.statuses[:available], library_id: l2.id)