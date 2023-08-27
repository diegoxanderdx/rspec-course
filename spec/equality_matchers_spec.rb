# el matcher eq es un matcher que se usa para evaluar que el resultado de un test sea igual a un valor especifico sin tener en cuenta el tipo de dato
# el matcher eql es un matcher que se usa para evaluar que el resultado de un test sea igual a un valor especifico teniendo en cuenta el tipo de dato
RSpec.describe 'eq matcher' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'checks that two values are the same' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'checks that two values are the same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end

  # para los siguientes casos debemos entender los conceptos de object identity y object equivalence, un objeto se dice tiene equality cuando 
  # los valores de sus atributos son iguales, pero no son el mismo objeto, se dice que tienen identity cuando ademas de ser iguales en sus atributos 
  # son el mismo objeto, es decir, apuntan a la misma direccion de memoria, para evaluar esto se usan los matchers equal y be que hacen lo mismo
  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)

      expect(c).to equal(e)
      expect(c).to be(e)

      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end
