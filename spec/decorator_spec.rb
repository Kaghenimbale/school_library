require_relative '../basedecator'

describe 'test Decorator class' do
  decorator = BaseDecator.new('anime')

  it 'takes parameter and return a Decorator class ' do
    expect(decorator).to be_instance_of(BaseDecator)
  end

  it 'raises NotImplementedError for other subclasses' do
    nameable = Nameable.new
    expect { nameable.correct_name }.to raise_error(NotImplementedError)
  end
end