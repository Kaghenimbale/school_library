class MenuChoice
  def initialize(app)
    @app = app
  end

  def menu_choice(menu)
    menu_actions = {
      1 => :list_book,
      2 => :list_person,
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
