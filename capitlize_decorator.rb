require_relative 'decorator'
require_relative 'person'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.upcase
  end
end
