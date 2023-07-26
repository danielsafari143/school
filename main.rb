require_relative 'app'

def split_method(data, index)
  case index
  when '4'
    create_book(data)
  when '5'
    create_rental(data)
  when '6'
    list_rental(data)
  else
    exit_program
  end
end

def methods(data)
  choice = gets.chomp

  case choice
  when '1'
    list_book(data)
  when '2'
    list_people(data)
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
