require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

data = { 'student' => [], 'teacher' => [], 'book' => [], 'rental' => [] }

def list_book(data)
  local_book = data['book']
  local_book.each.with_index do |book, index|
    puts "#{index}) Title: #{book.title} , Author: #{book.author}"
  end
end

def list_people(data)
  local_student = data['student']
  local_teacher = data['teacher']
  people = local_student.concat(local_teacher)
  people.each_with_index do |student, index|
    puts "#{index}) [#{student.class.name}] Name : #{student.name} ID : #{student.id} Age : #{student.age}"
  end
end

def list_rental(data)
    print "ID of person :"
    ids = gets.chomp 
    local_student = data['student']
    local_teacher = data['teacher']
    people = local_student.concat(local_teacher)
    people.each_with_index do |student, index|
      if student.id == ids.to_i
        puts "#{index}) [#{student.class.name}] Name : #{student.name} ID : #{student.id} Age : #{student.age}"
      end
    end
end

def create_user(knd, data)
  print 'Age : '
  age = gets.chomp.to_i
  print 'Name : '
  name = gets.chomp

  if knd == '1'
    print 'Has parent permission? [Y/N] : '
    parent_permission = gets.chomp == 'y'
    data['student'].push(Student.new(age, name, parent_permission))
  else
    print 'Specialization : '
    specialization = gets.chomp
    data['teacher'].push(Teacher.new(age, name, specialization))
  end
  puts 'Person created successfully'
end

def create_book(data)
  print 'Title : '
  title = gets.chomp
  print 'Author : '
  author = gets.chomp
  data['book'].push(Book.new(title, author))
  puts data['book']
  puts 'Book created successfully'
end

def create_rental(data)
  local_student = data['student']
  local_teacher = data['teacher']
  local_book = data['book']
  local_rental = data['rental']
  people = local_student.concat(local_teacher)
  puts 'Select a book from the following books by number'
  local_book.each.with_index do |book, index|
    puts "#{index}) Title: #{book.title} , Author: #{book.author}"
  end
  choice = gets.chomp
  puts 'Select a person from the following list by number (not Id)'
  people.each_with_index do |student, index|
    puts "#{index}) [#{student.class.name}] Name : #{student.name} ID : #{student.id} Age : #{student.age}"
  end
  person = gets.chomp
  print 'Date : '
  date = gets.chomp
  local_rental.push(Rental.new(date, local_book[choice.to_i], people[person.to_i]))
  puts 'Rental created successfully'
end

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
  create_rental(data) if choice == '6'
   
  main(data)
end

main(data)
