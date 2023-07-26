class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @book = book.title
    @person = person.name
    @date = date
    book.add_rental(self)
    person.add_rental(self)
  end
end
