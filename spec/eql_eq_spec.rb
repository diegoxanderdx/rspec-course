# el matcher eq es un matcher que se usa para evaluar que el resultado de un test sea igual a un valor especifico sin tener en cuenta el tipo de dato
# el matcher eql es un matcher que se usa para evaluar que el resultado de un test sea igual a un valor especifico teniendo en cuenta el tipo de dato
RSpec.describe 'eq matcher' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  context 'without type check' do
    it 'checks that two values are the same' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  context 'with type check' do
    it 'checks that two values are the same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end
end