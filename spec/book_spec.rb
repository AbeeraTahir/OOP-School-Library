require_relative '../book'

describe Book do
  before :each do
    @book = Book.new 'Lords', 'Tolkien'
  end
  it 'takes two parameters and returns a Book object' do
    expect(@book).to be_an_instance_of Book
  end
  # def add_rental(rental)
  #  @rentals.push(rental)
  #  rental.book = self
  # end
  it 'Book object to json' do
    book_json = @book.to_json
    expect(book_json).to eql '{"json_class":"Book","title":"Lords","author":"Tolkien"}'
  end
end
