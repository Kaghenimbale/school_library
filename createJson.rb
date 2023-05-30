require 'json'

class CreateJsonBook
    def initialize(app)
        @app = app
    end

    def create_file
        my_book = {}
        books = []
        @app.books.each_with_index do |book, index|
            single_book = { Title: book[1].title, Author: book[1].author }
            books.push(single_book)
        end
        my_book = { Book: books }.to_json
        open('books.json', 'a' ) do |file|
            file.puts my_book
        end 

    end
end