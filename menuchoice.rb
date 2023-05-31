require './createjson'


class MenuChoice
  MENU_ACTIONS = {
    1 => :list_book,
    2 => :list_person,
    3 => :add_person,
    4 => :create_book,
    5 => :create_rental,
    6 => :list_rentals,
    7 => :exit
  }.freeze

  def initialize(app)
    @app = app
  end

  def menu_choice(menu)
    action = MENU_ACTIONS[menu]

    if action
      handle_action(action)
    else
      puts 'Invalid choice. Please try again.'
    end
  end

  private

  def handle_action(action)
    if action == :exit
      create_json_files
      puts 'Thank you for using this app!'
      exit
    else
      @app.send(action)
    end
  end

  def create_json_files
    book = CreateJsonBook.new(@app).create_file
    people = CreateJsonPeople.new(@app).create_file
    rental = CreateJsonRental.new(@app).create_file
  end
end
