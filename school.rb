class Person
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_accessor :id, :name, :age

  private def of_age?
    @age >= 18
  end

  public def can_use_services?
    (@age >= 18) or @parent_permission
  end
end

class Student < Person
  def initialize(age, name = 'Unknown', parent_permission = true , classroom)
    super(age , name , parent_permission)
    @classroom = classroom
  end
end


daniel = Person.new(12)
puts daniel.can_use_services?
