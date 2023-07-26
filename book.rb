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

book = Book.new('CodeGame', 'Safari Hamuli')
student = Student.new(23, 'Terminal', 'daniel', true)
rent = Rental.new(Date.today, book, student)
rents = Rental.new(Date.today, book, student)

puts student.rental
