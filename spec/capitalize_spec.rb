require_relative '../capitalizedecorator'
require_relative '../person'
require_relative '../basedecator'

describe 'CapitalizeDecorator  class' do
  person = Person.new(30, 'micronauts')
  capitalize = CapitalizeDecorator.new(person)

  it 'takes parameter and return a CapitalizeDecorator class ' do
    expect(capitalize).to be_instance_of(CapitalizeDecorator)
  end
  
  it 'the methods should work' do
    puts
    expect(capitalize.correct_name).to eql('Micronauts')
  end
end