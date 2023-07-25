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
  end

  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    (@age >= 18) or @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, name: 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_n ame
