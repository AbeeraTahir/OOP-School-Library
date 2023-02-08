require_relative '../person'
require_relative '../student'
require_relative '../book'
require_relative '../rental'

describe Person do
  before :each do
    @person = Person.new 10, 17, 'Abeera', 'n'
    @student = Student.new 11, 'class1', 17, 'John', 'n'
    @book = Book.new 'Lords1', 'Tolkien'
    @rental = Rental.new '02/13/2023', @book, @student, 11
  end
  it 'takes four parameters and returns a Person object' do
    expect(@person).to be_an_instance_of Person
  end
  it "can_use_services? method should return false on age < 18 and parent permission == 'n'" do
    expect(@person.can_use_services?).to eql false
  end
  it "Name should be 'Abeera'" do
    expect(@person.name).to eql 'Abeera'
  end
  it 'Add Rental should add object into rentals array be of length 1' do
    @person.add_rental(@rental)
    expect(@person.rentals.length).to eql 1
  end
end
