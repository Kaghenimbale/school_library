require_relative '../person'
require_relative '../teacher'

describe 'test teacher class' do
  context 'instance of Teacher' do
    teacher = Teacher.new(27, 'Rails' , 'Chris')

    it 'takes two parameters and returns a Teacher object' do
      expect(teacher).to be_instance_of(Teacher)
    end

    it 'should have attributes' do
      expect(teacher).to have_attributes(age: 27)
      expect(teacher).to have_attributes(name: 'Chris')
    end

    it 'the methods should work' do
      expect(teacher.correct_name.length).to eql(5)
    end
  end
end