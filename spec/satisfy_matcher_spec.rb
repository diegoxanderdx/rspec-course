# el satisfy matcher verifica que un objeto cumpla con una condición específica personalizada, que se le pasa como bloque. El bloque debe devolver true o false. 
# Si devuelve true, el matcher pasa, si devuelve false, el matcher falla.
RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
  end
end