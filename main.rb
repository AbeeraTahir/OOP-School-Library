require_relative './app.rb'

class Menu
  def initialize
    @app = App.new(self)
    puts 'Welcome to School library App!'
    show_menu
  end
  def show_menu
    puts "\nPlease choose an option by entering a number:
      1- List all books
      2- List all people
      3- Create a person
      4- Create a book
      5- Create a rental
      6- List all rentals for a given person id
      7- Exit"
      puts
      user_input = gets.chomp
      select_option(user_input)
  end
  def select_option(user_input)
    menu = {
      '1' => :list_all_books,
      '2' => :list_all_people,
      '3' => :create_person,
      '4' => :create_book,
      '5' => :create_rental,
      '6' => :list_all_rentals,
      '7' => :exit
    }
    option = menu[user_input]
    @app.send(option)
  end
end

def main
  Menu.new
end

main
  