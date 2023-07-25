require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name)
    super(age, name: name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher = Teacher.new(23, 'Biology', 'daniel')
puts teacher.name = ('John Doe')
