# predicate mehods son los metodos que devuelven un valor booleano, los identificamos porque terminan con un signo de interrogacion (?)
RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    # si el metodo termina con un signo de interrogacion (?), entonces devuelve un valor booleano
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    # los predicate matchers pueden ser usados con los metodos que devuelven un valor booleano
    # el predicate matcher va unido al metodo con un guion bajo (_)
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
    it { is_expected.not_to be_odd }
  end
end