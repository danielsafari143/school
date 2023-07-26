require_relative 'app'

def split_method(data, choice)
  case choice

  when '4'
    create_book(data) if choice == '4'
  when '5'
    create_rental(data) if choice == '5'

  when '6'
    list_rental(data) if choice == '6'
  when '7'
    exit_program if choice == '7'
  end
end

def methods(data)
  choice = gets.chomp

  case choice
  when '1'
    list_book(data) if choice == '1'
  when '2'
    list_people(data) if choice == '2'
  when '3'
    print 'Do you want to create a student (1) or a teacher (2) [input the number] : '
    user = gets.chomp
    create_user(user, data)
  else
    split_method(data, choice)
  end
end

data = { 'student' => [], 'teacher' => [], 'book' => [], 'rental' => [] }
def main(data)
  choices = ['List all books', 'List all people',
             'Create a person', 'Create a book', 'Create a rental', 'List all rentals for a given person Id',
             'Exit']
  puts 'Please choose an option by entering a number'
  choices.each.with_index(1) do |value, index|
    puts "#{index} -  #{value}"
  end
  methods(data)
  main(data)
end

main(data)
