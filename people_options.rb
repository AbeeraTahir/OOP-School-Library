require_relative './student'
require_relative './teacher'

class PeopleOptions
  attr_accessor :people
  def initialize
    @people = []
  end

  def list_all_people
    if @people.empty?
      puts 'No added person!'
    else
      @people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase == 'y'
    print 'Classroom: '
    classroom = gets.chomp
    @people.push(Student.new(classroom, age, name: name, parent_permission: parent_permission))
    puts
    puts 'Person created successfuly'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    @people.push(Teacher.new(specialization, age, name: name))
    puts
    puts 'Person created successfuly'
  end

  def create_person
    puts 'Do you want to create a student(1) or a teacher(2)? [Input the number]'
    person = gets.chomp
    case person
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Please add either 1 or 2!'
    end

  end
end