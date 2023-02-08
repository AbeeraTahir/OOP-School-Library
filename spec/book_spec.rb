require_relative '../book'
require_relative '../student'
require_relative '../rental'

describe Book do
  before :each do
    @book = Book.new 'Lords', 'Tolkien'
    @student = Student.new 11, 'class1', 17, 'John', 'n'
    @rental = Rental.new '02/13/2023', @book, @student, 11
  end
  it 'takes two parameters and returns a Book object' do
    expect(@book).to be_an_instance_of Book
  end
  it 'Add Rental should add object into rentals array be of length 1' do
    @book.add_rental(@rental)
    expect(@book.rentals.length).to eql 1
  end
  it 'Book object to json' do
    book_json = @book.to_json
    expect(book_json).to eql '{"json_class":"Book","title":"Lords","author":"Tolkien"}'
  end
end
