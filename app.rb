require './student'
require './teacher'
require './book'
require './rental'

class App
  attr_reader :books, :people, :rentals
  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  def list_book
    @books.each { |book| puts "Title : #{book[1].title}, Author : #{book[1].author}" }
  end

  def list_person
    @people.each do |people|
      puts "#{[people[0]]} Name: #{people[1].name}, ID : #{people[1].id}, Age : #{people[1].age}"
    end
  end

  def add_student
    puts 'Age: '
    age = gets.chomp
    puts 'Name: '
    name = gets.chomp
    puts 'Has parent permission? [Y/N]:'
    parent_permission = gets.chomp

    student = Student.new(age, name, parent_permission)

    @people.push(['student', student])
  end

  def add_teacher
    puts 'Age: '
    age = gets.chomp
    puts 'Name: '
    name = gets.chomp
    puts 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(age, specialization, name)

    @people.push(['teacher', teacher])
  end

  def create_book
    puts 'Title:'
    title = gets.chomp
    puts 'Author:'
    author = gets.chomp

    book = Book.new(title, author)

    @books.push(['book', book])
    puts 'Book created successfully!!'
  end

  def add_person
    puts 'Do you want to create a student (1), or a teacher (2)? [Input the number]:'
    person = gets.chomp

    if person == '1'
      add_student
      puts 'Person created successfully!!'
    elsif person == '2'
      add_teacher
      puts 'Person created successfully!!'
    else
      puts 'Incorrect value'
    end
  end

  def create_rental
    puts 'Select a book from the following list by number'

    @books.each_with_index do |book, index|
      puts "#{index}) Title : #{book[1].title}, Author : #{book[1].author}"
    end

    book_number = gets.chomp

    book = @books[book_number.to_i][1]

    puts 'Select a person from the following list by number (not by id)'

    @people.each_with_index do |people, index|
      puts "#{index}) #{[people[0]]} Name: #{people[1].name}, ID : #{people[1].id}, Age : #{people[1].age}"
    end

    person_number = gets.chomp

    person = @people[person_number.to_i][1]

    puts 'Date [ YYYY-MM-DD ] :'
    date = gets.chomp

    Rental.new(date, book, person)

    rental = { date: date, book: book, person: person }

    @rentals.push(rental)

    puts 'Rental created successfully'
  end

  def list_rentals
    puts 'ID of person :'
    id = gets.chomp

    puts 'Rentals:'

    @rentals.each do |data|
      if id.to_i == data[:person].id
        puts "Date: #{data[:date]}, Book #{data[:book].title} by #{data[:book].author}"
      else
        puts ' '
      end
    end
  end
end
