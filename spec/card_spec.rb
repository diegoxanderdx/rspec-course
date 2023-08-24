# el metodo "describe" como su nombre lo sugiere, describe que es lo que estamos testiando, en este caso la clase "Card", 
# recibe como parametro un string con el nombre de la clase que estamos testeando, y un bloque de codigo que contiene los test que queremos realizar delimitados
# dentro de un do      end. en el ecosistema de Rspec un tes es llamado un example, un example de como debe funcionar. tambien podemos agrupar examples
Rspec.describe 'Card' do
  # con el metodo "it" podemos definir un example, que es un test que queremos realizar, 
  # recibe como parametro un string con el nombre del test que estamos realizando (debe ser muy descriptivo sobre que debe suceder o que debe ser funcional) 
  # y un bloque de codigo que contiene el test que queremos realizar delimitados dentro de un do      end.
  # tanto "describe" como 'it' estan disponibles de manera global en el ecosistema de Rspec
  it 'has a type' do

  end
end