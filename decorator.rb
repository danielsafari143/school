require_relative 'nameable'

class Decorator < Nameable
  def initialize(nameab)
    super()
    @nameable = nameab
  end

  def correct_name
    @nameable.correct_name
  end
end
