require_relative '../book'

describe 'unit tests for book class' do
  context 'have an instance of Book' do
    book = Book.new('Talking Shoes', 'Peugeon Brothers')
    it 'takes two parameters and returns a Book{"title","author"}' do
      expect(book).to be_instance_of(Book)
    end
    it 'should have attributes' do
      expect(book).to have_attributes(title: 'Talking Shoes')
      expect(book).to have_attributes(author: 'Peugeon Brothers')
    end
  end
end
