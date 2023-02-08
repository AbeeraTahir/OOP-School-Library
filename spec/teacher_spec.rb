require_relative '../teacher.rb'

describe Teacher do
  before :each do
    @teacher = Teacher.new 10, 'time travel', 40, 'Alex', 'y'
  end
  it "takes five parameters and returns a Teacher object" do
    expect(@teacher).to be_an_instance_of Teacher
  end
  it "can_use_services? should return true" do
    expect(@teacher.can_use_services?).to eql true
  end
  # it "Student object to JSON" do
  #   pp @student
  #   json_object = @student.to_json
  #   expect(json_object).to eql '{"json_class":"Student","id":10,"classroom":"class1","age":17,"name":"John","parent_permission":"n"}'
  # end
end