require_relative 'app'

data = { 'student' => [], 'teacher' => [], 'book' => [], 'rental' => [] }
def main(data)
  puts ''
  puts 'Please choose an option by entering a number'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person Id'
  puts '7 - Exit'
  choice = gets.chomp

  list_book(data) if choice == '1'
  list_people(data) if choice == '2'

  if choice == '3'
    print 'Do you want to create a student (1) or a teacher (2) [input the number] : '
    user = gets.chomp
    create_user(user, data)
  end

  create_book(data) if choice == '4'
  create_rental(data) if choice == '5'
  list_rental(data) if choice == '6'
  exit_program if choice == '7'

  main(data)
end

main(data)
