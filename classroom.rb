require_relative 'student'

class Classroom
  attr_accessor :label
  attr_reader :student

  def initialize(label)
    @label = label
    @student = []
  end

  def add_student(student)
    @student.push(student)
    student.classroom = (label)
  end
end

clas = Classroom.new('MATH')
student = Student.new(23, 'Biology', 'daniel', true)
second = Student.new(218, 'Law', 'Rodrigue', true)
clas.add_student(student)
clas.add_student(second)

puts student.classroom
