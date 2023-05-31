require_relative '../trimmerdecorator'
require_relative '../person'
require_relative '../basedecator'

describe 'TrimmerDecorator  class' do
  person = Person.new(30, 'micronauts student')
  trimmer = TrimmerDecorator.new(person)

  it 'takes parameter and return a TrimmerDecorator class ' do
    expect(trimmer).to be_instance_of(TrimmerDecorator)
  end
  
  it 'the methods should work' do
    puts
    expect(trimmer.correct_name).to eql('micronauts')
  end
end