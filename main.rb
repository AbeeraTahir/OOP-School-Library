require_relative './app'

class MenuClass
  def initialize
    @app = App.new(self)
    puts 'Welcome to School library App!'
    show_menu
  end

  def show_menu
    puts "\nPlease choose an option by entering the number:
      1- List all books
      2- List all people
      3- Create a person
      4- Create a book
      5- Create a rental
      6- List all rentals for a given person id
      7- Exit"
    user_input = gets.chomp.to_i
    if user_input == 7
      puts 'Thank you for using the app!'
      exit(true)
    else
      @app.select_option(user_input)
    end
  end
end

def main
  MenuClass.new
end

main
