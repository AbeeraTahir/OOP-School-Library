require_relative '../person.rb'

describe Person do
  before :each do
    @person = Person.new 10, 17, 'Abeera', 'n'
  end
  it "takes four parameters and returns a Person object" do
    expect(@person).to be_an_instance_of Person
  end
  it "can_use_services? method should return false on age < 18 and parent permission == 'n'" do
    expect(@person.can_use_services?).to eql false
  end
  it "Name should be 'Abeera'" do
    expect(@person.name).to eql 'Abeera'
  end
  # it "Rentals should be of length 1" do
  #   expect(@person.add_rental('2023/07/03')).length eql 1
  # end
end