require_relative 'nameable'
require_relative 'capitlize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = ''
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rental = []
  end

  attr_accessor :name, :age
  attr_reader :id, :rental

  def can_use_services?
    (@age >= 18) or @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rent)
    @rental.push(rent)
  end

  private

  def of_age?
    @age >= 18
  end
end
