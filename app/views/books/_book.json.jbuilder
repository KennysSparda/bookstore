json.extract! book, :id, :name, :description, :author, :genre, :publisher, :price, :quantity, :created_at, :updated_at
json.url book_url(book, format: :json)
