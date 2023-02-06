require_relative './people_options'
require_relative './books_options'
require_relative './rental'

class App
  def initialize(menu)
    @menu = menu
    @books_options = BooksOptions.new
    @people_options = PeopleOptions.new
    @rentals = []
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
      create_rental
    when 6
      list_all_rentals
    when 7
      exit_app
    else
      puts 'Please select the number from the given list!'
    end
    @menu.show_menu
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: '#{book.title}', Author: #{book.author}" }
    book_number = gets.chomp.to_i
    puts

    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_number = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp
    @rentals.push(Rental.new(date, @books[book_number], @people[person_number]))
    puts 'Rental created successfully'

    @menu.show_menu
  end

  def list_all_rentals
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals:'
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
    end
    @menu.show_menu
  end

  def exit_app
    puts 'Thank you for using the app!'
    exit(true)
  end
end
