class Person
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_accessor :id, :name, :age



  def can_use_services?
    (@age >= 18) or @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
