class King 
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  # la described_class es una variable que apunta a la clase que se esta testeando, de forma dinamica, es decir si se cambia el nombre de la clase,
  # la described_class apuntara a la nueva clase, sin necesidad de cambiar el nombre de la variable. por ejemplo si el cliente dice que la clase 
  # debe llamarse de manera diferente
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }
  
  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end