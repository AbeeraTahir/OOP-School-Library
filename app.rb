require_relative './people_options'
require_relative './books_options'
require_relative './rental_options.rb'

class App
  def initialize(menu)
    @menu = menu
    @books_options = BooksOptions.new
    @people_options = PeopleOptions.new
    @rental_options = RentalOptions.new(@books_options.books, @people_options.people)
  end

  def select_option(user_input)
    case user_input
    when 1
      @books_options.list_all_books
    when 2
      @people_options.list_all_people
    when 3
      @people_options.create_person
    when 4
      @books_options.create_book
    when 5
      @rental_options.create_rental
    when 6
      @rental_options.list_all_rentals
    when 7
      exit_app
    else
      puts 'Please select the number from the given list!'
    end
    @menu.show_menu
  end

  def exit_app
    puts 'Thank you for using the app!'
    exit(true)
  end
end
