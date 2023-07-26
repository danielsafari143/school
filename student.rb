require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name, parent_permission)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student = Student.new(23, 'Terminal', 'daniel', true)
puts student.name = ('John Doe')
puts student.id
