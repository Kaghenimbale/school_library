require './app'
require './menuchoice'
require './displaymenu'

class Main
  attr_reader :app

  def initialize(app)
    @app = app
    @display_menu = DisplayMenu.new
    @menu_choice = MenuChoice.new(@app)
  end

  def main
    loop do
      @display_menu.display_menu
      menu = gets.chomp.to_i
      @menu_choice.menu_choice(menu)
      break if menu == 7
    end
  end
end

app = App.new
myapp = Main.new(app)
myapp.main
