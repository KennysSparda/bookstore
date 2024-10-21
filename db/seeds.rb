# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
books = [
  { name: "The Great Gatsby", description: "A novel about the American dream.", author: "F. Scott Fitzgerald", genre: "Fiction", publisher: "Charles Scribner's Sons", price: 10.99, quantity: 15 },
  { name: "1984", description: "A dystopian novel.", author: "George Orwell", genre: "Dystopian", publisher: "Secker & Warburg", price: 8.99, quantity: 10 },
  { name: "To Kill a Mockingbird", description: "A novel about racism and justice.", author: "Harper Lee", genre: "Fiction", publisher: "J.B. Lippincott & Co.", price: 12.99, quantity: 20 },
  { name: "Pride and Prejudice", description: "A romantic novel.", author: "Jane Austen", genre: "Romance", publisher: "T. Egerton", price: 7.99, quantity: 25 },
  { name: "Moby Dick", description: "A novel about a whale hunt.", author: "Herman Melville", genre: "Adventure", publisher: "Harper & Brothers", price: 9.99, quantity: 5 },
  { name: "War and Peace", description: "A novel set during the Napoleonic Wars.", author: "Leo Tolstoy", genre: "Historical Fiction", publisher: "The Russian Messenger", price: 14.99, quantity: 12 },
  { name: "The Catcher in the Rye", description: "A story of teenage rebellion.", author: "J.D. Salinger", genre: "Fiction", publisher: "Little, Brown and Company", price: 10.99, quantity: 18 },
  { name: "Brave New World", description: "A dystopian future society.", author: "Aldous Huxley", genre: "Dystopian", publisher: "Chatto & Windus", price: 9.49, quantity: 7 },
  { name: "The Lord of the Rings", description: "A fantasy epic.", author: "J.R.R. Tolkien", genre: "Fantasy", publisher: "Allen & Unwin", price: 22.99, quantity: 30 },
  { name: "The Hobbit", description: "A journey to the Lonely Mountain.", author: "J.R.R. Tolkien", genre: "Fantasy", publisher: "Allen & Unwin", price: 12.49, quantity: 40 },
  { name: "Crime and Punishment", description: "A philosophical crime novel.", author: "Fyodor Dostoevsky", genre: "Philosophical Fiction", publisher: "The Russian Messenger", price: 11.99, quantity: 6 },
  { name: "The Odyssey", description: "An epic poem of Greek mythology.", author: "Homer", genre: "Epic", publisher: "Unknown", price: 8.49, quantity: 13 },
  { name: "Don Quixote", description: "A tale of a misguided knight.", author: "Miguel de Cervantes", genre: "Adventure", publisher: "Francisco de Robles", price: 13.99, quantity: 9 },
  { name: "The Divine Comedy", description: "A journey through Hell, Purgatory, and Heaven.", author: "Dante Alighieri", genre: "Epic", publisher: "John Murray", price: 15.99, quantity: 5 },
  { name: "Frankenstein", description: "The story of a scientist and his creation.", author: "Mary Shelley", genre: "Gothic Fiction", publisher: "Lackington, Hughes, Harding, Mavor & Jones", price: 8.99, quantity: 15 }
]

books.each do |book|
  Book.create(book)
end