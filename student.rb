require './person'

class Student < Person
  attr_reader :rentals, :classroom

  def initialize(age, name, parent_permission)
    super(age, name, parent_permission: parent_permission)
    rentals = []
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
