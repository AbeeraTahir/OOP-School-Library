require_relative '../classroom'
require_relative '../student'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'Room 1A'
    @student = Student.new 11, 'class1', 17, 'John', 'n'
  end
  it 'takes one parameters and returns a Classroom object' do
    expect(@classroom).to be_an_instance_of Classroom
  end
  it 'Add Student should add object into students array be of length 1' do
    @classroom.add_student(@student)
    expect(@classroom.students.length).to eql 1
  end
end
