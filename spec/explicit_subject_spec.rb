# el explicit subject se usa para sobreescribir uno implicito y crear uno personalizado, los subject explicitos pueden de igual manera, ser usados en cualquier
# parte del test, pueden llevar un nombre personalizado que va asi subject(:nombre_personalizado) { ... }
RSpec.describe Hash do
  subject(:bob) { {a: 1, b: 2} }

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end
