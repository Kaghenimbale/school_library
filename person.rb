require './nameable'
require './capitalizedecorator'
require './trimmerdecorator'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_accessor :age, :name
  attr_reader :id, :rentals, :parent_permission

  def can_use_services?
    return unless of_age? || @parent_permission

    true
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(book, date, self)
  end

  private

  def of_age?
    @age >= 18
  end
end
