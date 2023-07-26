require 'date'
require_relative 'rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    rentals.push(rental)
    rental.book = (title)
  end
end

book = Book.new('CodeGame', 'Safari Hamuli')
rent = Rental.new(Date.today)
book.add_rental(rent)
book.add_rental(rent)
puts book.rentals
