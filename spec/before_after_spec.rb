RSpec.describe 'before and after hooks' do
  # un hook es un momento en el tiempo de la ejecucion de un test, en el que podemos ejecutar un bloque de codigo, en el caso del before hook se ejecuta antes 
  # de cada example debido al simbolo que pasamos como argumento, el after hook se ejecutada despues de cada example o argumento que hayamos pasado en forma de simbolo
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'  
  end
  
  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do  
    expect(3 - 2).to eq(1)
  end
end