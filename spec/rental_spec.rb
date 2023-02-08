require_relative '../rental'
require_relative '../student'
require_relative '../book'

describe Rental do
  before :each do
    @student = Student.new 10, 'class1', 17, 'John', 'n'
    @book = Book.new 'Lords', 'Tolkien'
    @rental = Rental.new '02/13/2023', @book, @student, 10
  end
  it 'takes four parameters and returns a Student object' do
    expect(@rental).to be_an_instance_of Rental
  end
  it 'Rental object to json' do
    rental_json = @rental.to_json
    # rubocop:disable Layout/LineLength
    expect(rental_json).to eql '{"json_class":"Rental","date":"02/13/2023","book":{"json_class":"Book","title":"Lords","author":"Tolkien"},"person":{"json_class":"Student","id":10,"classroom":"class1","age":17,"name":"John","parent_permission":"n"},"id":10}'
    # rubocop:enable Layout/LineLength
  end
end
