# el all matcher verifica que dada una coleccion de una clase, todos los elementos de esa coleccion cumplan con una condicion, si uno solo de los
# elementos no cumple con la condicion, el all matcher devuelve false, si todos los elementos cumplen con la condicion, el all matcher devuelve true
RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    # all matcher se usa con el metodo to
    expect([5, 7, 9]).to all(be_odd)
    expect([4, 6, 8]).to all(be_even)
    expect([[], [], []]).to all(be_empty)
    expect([0, 0, 0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end

  describe [5, 7, 9] do
    # oneliner sintax
    it { is_expected.to all(be_odd) }
  end
end
