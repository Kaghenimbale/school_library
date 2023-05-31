require_relative '../person'
require_relative '../student'

describe 'test student class' do
  context 'instance of Student' do
    student = Student.new(23, 'Daniel' , true)

    it 'takes two parameters and returns a Student object' do
      expect(student).to be_instance_of(Student)
    end

    it 'should have attributes' do
      expect(student).to have_attributes(age: 23)
      expect(student).to have_attributes(name: 'Daniel')
    end

    it 'the methods should work' do
      expect(student.correct_name.length).to eql(6)
    end
  end
end