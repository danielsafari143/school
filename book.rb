require 'date'
require_relative 'rental'
require_relative 'student'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    rentals.push(rental)
  end
end
