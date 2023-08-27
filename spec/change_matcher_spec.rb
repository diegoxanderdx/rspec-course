# el change matcher permite probar que un metodo cambie el estado de un objeto, es decir, evalua el subjet antes y despues de la ejecucion del metodo y verifica que el estado del objeto haya cambiado.
# podemos usarlo con from y to, pero tambien con by, como lo vemosen los siguientes ejemplos
RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks that a method changes object state' do
    # expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end
