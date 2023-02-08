require_relative '../student'

describe Student do
  before :each do
    @student = Student.new 10, 'class1', 17, 'John', 'n'
  end
  it 'takes five parameters and returns a Student object' do
    expect(@student).to be_an_instance_of Student
  end
  it "Play Hooky method should return '¯\\(ツ)/¯'" do
    expect(@student.play_hooky).to eql '¯\\(ツ)/¯'
  end
  it "Classroom should be 'class1'" do
    expect(@student.classroom).to eql 'class1'
  end
  it 'Student object to json' do
    student_json = @student.to_json
    # rubocop:disable Layout/LineLength
    expect(student_json).to eql '{"json_class":"Student","id":10,"classroom":"class1","age":17,"name":"John","parent_permission":"n"}'
    # rubocop:enable Layout/LineLength
  end
end
