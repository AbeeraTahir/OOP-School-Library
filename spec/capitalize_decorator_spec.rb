require_relative '../capitalize_decorator'
require_relative '../person'

describe CapitalizeDecorator do
  before :each do
    @person = Person.new 10, 17, 'abeera abeera', 'n'
    @capitalize_decorator = CapitalizeDecorator.new @person
  end
  it 'takes one parameters and returns a BaseDecorator object' do
    expect(@capitalize_decorator).to be_an_instance_of CapitalizeDecorator
  end
  it 'correct_name method should return the same name given in the person object with first character Capitalized' do
    expect(@capitalize_decorator.correct_name).to eql 'Abeera abeera'
  end
end
