RSpec.describe "#even? method" do
  # para tener un orden en nuestro codigo, podemos agrupar los examples en contextos, en este caso el context nos ayuda a agrupar los examples que tienen que ver con
  # numero par y los que tienen que ver con numero impar, y nos ayuda a mantener nuestro codigo DRY, tambien es posible hacerlo con describes anidados pero es mas usado
  # el context
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  describe 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end