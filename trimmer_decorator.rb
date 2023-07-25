require_relative 'decorator'

class TrimmerDecorator < Decorator
  def correct_name
    return @nameable.correct_name.strip if @nameable.correct_name.length > 10

    @nameable.correct_name
  end
end