require_relative '../classroom'
require_relative '../student'

describe 'test classroom class' do
  context 'instance of Classroom' do
    student1 = Student.new(23, 'Daniel', true)
    student2 = Student.new(26, 'Chris', true)
    student3 = Student.new(53, 'Bob', true)
    classroom = Classroom.new([student1, student2, student3])

    it 'takes 1 parameter student and returns a Classroom array' do
      expect(classroom).to be_instance_of(Classroom)
    end

    describe '#add_student' do
      it 'adds the student to the classroom and assigns the classroom to the student' do
        classroom.add_student(student1)
        expect(classroom.students).to include(student1)
      end
    end
  end
end
