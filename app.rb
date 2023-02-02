require_relative './student.rb'
require_relative './teacher.rb'
require_relative './book.rb'
require_relative './rental.rb'

class App
  def initialize(user)
    @user = user
    @books = []
    @people = []
    @rentals = []
  end
  def list_all_books
    @user.show_menu
  end
  def list_all_people
    @user.show_menu
  end
  def create_person
    @user.show_menu
  end
  def create_book
    @user.show_menu
  end
  def create_rental
    @user.show_menu
  end
  def list_all_rentals
    @user.show_menu
  end
  def exit
    puts 'Thank you for using the app!'
  end
end
