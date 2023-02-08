require_relative '../trimmer_decorator'
require_relative '../person'

describe BaseDecorator do
  before :each do
    @person = Person.new 10, 17, 'abeera abeera', 'n'
    @trimmer_decorator = TrimmerDecorator.new @person
  end
  it 'takes one parameters and returns a BaseDecorator object' do
    expect(@trimmer_decorator).to be_an_instance_of TrimmerDecorator
  end
  it 'correct_name method should return the same name given in the person object' do
    expect(@trimmer_decorator.correct_name).to eql 'abeera abe'
  end
end
