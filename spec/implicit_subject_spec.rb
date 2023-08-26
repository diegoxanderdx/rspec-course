# un implicit subject es un objeto que se crea de forma automatica cuando se crea un test, por ejemplo, si se crea un test para un hash, el implicit subject 
# sera un hash vacio, si se crea un test para un array, el implicit subject sera un array vacio, etc.
RSpec.describe Hash do
  it 'should start off empty' do
    puts subject
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some Value"
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end