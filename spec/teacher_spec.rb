require_relative '../teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new 10, 'time travel', 40, 'Alex', 'y'
  end
  it 'takes five parameters and returns a Teacher object' do
    expect(@teacher).to be_an_instance_of Teacher
  end
  it 'can_use_services? should return true' do
    expect(@teacher.can_use_services?).to eql true
  end
  it 'Teacher object to json' do
    teacher_json = @teacher.to_json
    # rubocop:disable Layout/LineLength
    expect(teacher_json).to eql '{"json_class":"Teacher","id":10,"specialization":"time travel","age":40,"name":"Alex","parent_permission":"y"}'
    # rubocop:enable Layout/LineLength
  end
end
