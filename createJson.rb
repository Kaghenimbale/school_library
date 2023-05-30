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

class CreateJsonPeople
    def initialize(app)
        @app = app
    end

    def create_file
        my_person = {}
        persons = []
        @app.people.each do |people|
            single_person = { Person: people[0], Name: people[1].name, ID: people[1].id, Age: people[1].age }
            persons.push(single_person)
        end
        my_person = { Person: persons }.to_json
        open('people.json', 'a' ) do |file|
            file.puts my_person
        end 

    end
end
