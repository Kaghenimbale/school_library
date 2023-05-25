require './app'

class Main
  attr_reader :app

  def initialize(app)
    @app = app
  end

  def main
    loop do
      display_menu
      menu = gets.chomp.to_i
      menu_choice(menu)
      break if menu == 7
    end
  end

  def display_menu
    puts 'Please choose an option by enterin a number:'

    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all the rental for a given person id'
    puts '7 - Exit'
  end

  def menu_choice(menu)
    menu_actions = {
      1 => :list_book,
      2 => :list_people,
      3 => :add_person,
      4 => :create_book,
      5 => :create_rental,
      6 => :list_rentals,
      7 => :exit
    }

    action = menu_actions[menu]
    if action
      if action == :exit
        puts 'Thank you for using this app!'
        exit
      else
        @app.send(action)
      end
    else
      puts 'Invalid choice. Please try again.'
    end
  end
end

app = App.new
myapp = Main.new(app)
myapp.main
