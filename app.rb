require "./student"

class App
    def initialize
        @books = []
        @rentals = []
        @people = []
    end

    def list_book
        @books.each { |book| book}
    end

    def list_person
        @people.each { |people| puts people}
    end

    def add_student
        puts "Age: "
        age = gets.chomp
        puts "Name: "
        name = gets.chomp
        puts "Has parent permission? [Y/N]:"
        parent_permission = gets.chomp

        student = Student.new(age, name, parent_permission)

        @people.push(["student": student])

        puts "Person created successfully"
    end
end

app = App.new
app.add_student
app.list_person
