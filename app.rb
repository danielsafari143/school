require_relative 'student'
require_relative 'teacher'

$student = []
$teacher = []

def create_user(knd)
  print 'Age : '
  age = gets.chomp.to_i
  print 'Name : '
  name = gets.chomp

  if knd == '1'
    print 'Has parent permission? [Y/N] : '
    parent_permission = gets.chomp == 'y'
    $student.push(Student.new(age, name, parent_permission))
    puts $student
  else
    print 'Specialization : '
    specialization = gets.chomp
    $teacher.push(Teacher.new(age, name, specialization))
    puts $teacher
  end
  puts 'Person created successfully'
end

def main
  puts ''
  puts 'Please choose an option by entrring a number'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person Id'
  puts '7 - Exit'
  choice = gets.chomp

  if choice == '3'
    print 'Do you want to create a student (1) or a teacher (2) [input the number] : '
    user = gets.chomp
    create_user(user)
  end
  main
end

main
