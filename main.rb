require_relative 'app'

data = { 'student' => [], 'teacher' => [], 'book' => [], 'rental' => [] }
def main(data)
  choices = ['List all books', 'List all people',
             'Create a person', 'Create a book', 'Create a rental', 'List all rentals for a given person Id',
             'Exit']
  puts 'Please choose an option by entering a number'           
  choices.each.with_index(1) do |value, index|
    puts "#{index} -  #{value}"
  end
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
