require_relative '../base_decorator'
require_relative '../person'

describe BaseDecorator do
  before :each do
    @person = Person.new 10, 17, 'abeera abeera', 'n'
    @base_decorator = BaseDecorator.new @person
  end
  it 'takes one parameters and returns a BaseDecorator object' do
    expect(@base_decorator).to be_an_instance_of BaseDecorator
  end
  it 'correct_name method should return the same name given in the person object' do
    expect(@base_decorator.correct_name).to eql 'abeera abeera'
  end
end
