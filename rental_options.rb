require_relative './rental'

class RentalOptions
  attr_accessor :rentals

  def initialize(books_options, people_options)
    @rentals = []
    @books_options = books_options
    @people_options = people_options
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books_options.list_all_books_with_index
    book_number = gets.chomp.to_i
    puts

    puts 'Select a person from the following list by number (not id)'
    @people_options.list_all_people_with_index
    person_number = gets.chomp.to_i
    people_id = @people_options.get_person_id_by_index(person_number)
    print 'Date: '
    date = gets.chomp
    @rentals.push(Rental.new(date, @books_options.books[book_number], @people_options.people[person_number], people_id))
    puts 'Rental created successfully'
  end

  def list_all_rentals
    if @rentals.empty?
      puts 'No added rental!'
    else
      print 'ID of person: '
      id = gets.chomp.to_i
      puts 'Rentals:'
      @rentals.each do |rental|
        puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
      end
    end
  end
end
