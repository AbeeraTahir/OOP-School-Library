require_relative './people_options'
require_relative './books_options'
require_relative './rental_options'
require_relative './file_storage'

class App
  def initialize(menu)
    @menu = menu
    @books_options = BooksOptions.new
    @people_options = PeopleOptions.new
    @rental_options = RentalOptions.new(@books_options, @people_options)
    @books_options.books = FileStorage.load_data('books')
    @people_options.people = FileStorage.load_data('people')
    @rental_options.rentals = FileStorage.load_data('rentals')
  end

  def select_option(user_input)
    case user_input
    when 1
      @books_options.list_all_books
    when 2
      @people_options.list_all_people
    when 3
      @people_options.create_person
      FileStorage.save_data('people', @people_options.people)
    when 4
      @books_options.create_book
      FileStorage.save_data('books', @books_options.books)
    when 5
      @rental_options.create_rental
      FileStorage.save_data('rentals', @rental_options.rental)
    when 6
      @rental_options.list_all_rentals
    else
      puts 'Please select the number from the given list!'
    end
    @menu.show_menu
  end
end
