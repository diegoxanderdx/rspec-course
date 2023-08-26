class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    # para sobreescribir let, simplemente se crea el let dentro el scope actual, porque en los examples siempre empieza buscando en el scope mas cercano, si no lo 
    # encuentra, lo buscara en niveles mas altos de scope

    let(:language) { ProgrammingLanguage.new }

    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end