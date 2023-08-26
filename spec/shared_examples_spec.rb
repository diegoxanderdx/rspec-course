# un shared example es un bloque de codigo que se puede reutilizar en varios test, su sintaxis va como se ve a continuacion:
RSpec.shared_examples 'a Ruby object with three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  # para llamar el example en otro test, se invoca mediante el metodo include_examples y le pasamos el string con el que fue nombrado el shared
  include_examples 'a Ruby object with three elements'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a Ruby object with three elements'
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples 'a Ruby object with three elements'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'a Ruby object with three elements'
end