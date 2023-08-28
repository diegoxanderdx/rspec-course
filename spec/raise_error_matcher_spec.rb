# el raise_error matcher busca que se levante un error, la sintaxis cambia en el expect que se envia un bloque de codigo oneliner dentro de {}

RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  class CustomError < StandardError; end

  describe 'raise_error syntax' do
    it 'checks for an error to be raised' do
      expect { some_method }.to raise_error(NameError)
      expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    end

    it 'checks for a user-created error' do
      expect { raise CustomError }.to raise_error(CustomError)
    end
  end
end
