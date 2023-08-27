# be matcher para verificar booleanos,en ruby solo existen dos valores falsy, que son false y nil, todo lo demas es truthy
RSpec.describe 'be matcher' do
  it 'can be used for truthiness' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect(0).to be_truthy
    expect(14).to be_truthy
    expect(-1).to be_truthy
    expect(3.14).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can be used for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can be used for nil' do
    expect(nil).to be_nil
    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end
end
