require_relative './person'
require 'json'

class Student < Person
  attr_reader :classroom
  attr_accessor :id

  def initialize(id, classroom, age, name = 'unknown', parent_permission = 'y')
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'id' => @id,
      'classroom' => @classroom,
      'age' => @age,
      'name' => @name,
      'parent_permission' => @parent_permission
    }.to_json(*args)
  end

  def self.json_create(object)
    new(object['id'], object['classroom'], object['age'], object['name'], object['parent_permission'])
  end
end
