require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name, parent_permission)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def add_classroom(classroom)
    @classroom = classroom
  end
end

student = Student.new(23, 'Terminal', 'daniel', true)
classroom = Classroom.new('Biology')
classroom.add_student(student)
classroom.add_student(student)
classroom.add_student(student)

puts classroom.student
