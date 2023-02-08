require_relative '../classroom'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'Room 1A'
  end
  it 'takes one parameters and returns a Classroom object' do
    expect(@classroom).to be_an_instance_of Classroom
  end
  #  it "add_student method should add a student into array" do
  #    expect(@person.can_use_services?).to eql false
  #  end
end
