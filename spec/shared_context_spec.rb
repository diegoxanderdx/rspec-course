# declaramos el shared context con la palabra clave RSpec.shared_context y le pasamos un string con el nombre que le queremos dar al shared context,
# luego dentro del bloque de codigo definimos las variables de instancia que queremos que sean compartidas entre los test, y tambien definimos los 
# metodos que queremos que sean compartidos entre los test, luego para usar el shared context en un test, usamos la palabra clave include_context 
# y le pasamos el string con el nombre del shared context que queremos usar, y listo, ya podemos usar las variables de instancia y los metodos que 
# definimos en el shared context en el test que lo incluyo.
RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end

  it 'can reuse instance variables across different examples' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end
end
