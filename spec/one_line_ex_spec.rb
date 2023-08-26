RSpec.describe 'shorthand syntax' do
  subject { 5 }
  
  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end
  # el siguiente es el ejemplo de oneliner example, siempre va a tener esa estructura y sintaxis, es decir, no se le pasa el argumento string
  # sino que de una vez pasamos el bloque de codigo que queremos que se ejecute dentro de {}

  context 'with one-liner syntax' do
    it { is_expected.to eq(5) }
  end
end
