require_relative './app'
require_relative './file_storage'

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
      FileStorage.save_data('books', @app.books_options.books)
      FileStorage.save_data('people', @app.people_options.people)
      FileStorage.save_data('rentals', @app.rental_options.rentals)
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
