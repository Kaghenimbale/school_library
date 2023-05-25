require "./app"

class Main
    attr_reader :app

    def initialize(app)
        @app = app
    end

    def main
        loop do
        puts "Please choose an option by enterin a number:"

        puts "1 - List all books"
        puts "2 - List all people"
        puts "3 - Create a person"
        puts "4 - Create a book"
        puts "5 - Create a rental"
        puts "6 - List all the rental for a given person id"
        puts "7 - Exit"
    
        menu = gets.chomp

        case menu.to_i
        when 1
            @app.list_book
        when 2
            @app.list_person
        when 3
            @app.add_person
        when 4
            @app.create_book
        when 5
            @app.create_rental
        when 6
            @app.list_rentals
        when 7
            puts "Thank you for using this app!"
            exit
        end
    end
    end
end

app = App.new
myapp = Main.new(app)
myapp.main