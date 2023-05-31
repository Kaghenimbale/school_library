require_relative '../person'

describe 'test person class' do
  context 'instance of Person' do
    person = Person.new(23, 'Daniel')

    it 'takes two parameters and returns a Person object' do
      expect(person).to be_instance_of(Person)
    end

    it 'should have attributes' do
      expect(person).to have_attributes(age: 23)
      expect(person).to have_attributes(name: 'Daniel')
      expect(person).to have_attributes(parent_permission: true)
    end

    it 'the methods should work' do
      expect(person.can_use_services?).to be true
      expect(person.correct_name).to eql('Daniel')
    end
  end
end