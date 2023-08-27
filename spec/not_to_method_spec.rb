# not_to es un matcher, un matcher es un metodo que se usa para evaluar o validar el resultado de un test, es un tipo de assertion o expectativa,
# el matcher not_to se usa para evaluar que el resultado de un test no sea igual a un valor especifico, es decir, que el resultado de un test no sea
# igual a un valor especifico
# el matcher not_to busca el inverso o el negativo, el opuesto de un matcher
RSpec.describe 'not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)
    expect('Hello').not_to equal('hello')
    expect([1, 2]).not_to equal([1, 2, 3])
  end
end
