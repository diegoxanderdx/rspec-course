# el metodo "describe" como su nombre lo sugiere, describe que es lo que estamos testiando, en este caso la clase "Card", 
# recibe como parametro un string con el nombre de la clase que estamos testeando, y un bloque de codigo que contiene los test que queremos realizar delimitados
# dentro de un do      end. en el ecosistema de Rspec un tes es llamado un example, un example de como debe funcionar. tambien podemos agrupar examples
Rspec.describe 'Card' do
  # con el metodo "it" podemos definir un example, que es un test que queremos realizar, 
  # recibe como parametro un string con el nombre del test que estamos realizando (debe ser muy descriptivo sobre que debe suceder o que debe ser funcional) 
  # y un bloque de codigo que contiene el test que queremos realizar delimitados dentro de un do      end.
  # tanto "describe" como 'it' estan disponibles de manera global en el ecosistema de Rspec
  it 'has a type' do
    # asumimos que la clase Card ya esta definida y que tiene un metodo llamado type que retorna el tipo de la carta y 
    # que podemos instanciar un objeto de la clase Card y asignarlo a la variable card
    card = Card.new('Ace of Spades')
    # con el metodo "expect" podemos definir una expectativa, que es una condicion que debe cumplir el test para que sea exitoso, puede recibir como argumento un 
    # objeto, un atributo de un objeto, un metodo de un objeto, una expresion plana de ruby etc. en este caso recibe como argumento el objeto card
    # con el metodo "eq" que es un matcher, que es un metodo que compara el resultado de un test con un valor esperado dado en el argumento, en este caso 
    # el valor esperado es el string 'Ace of Spades', como resultado del type de la carta.
    expect(card.type).to eq('Ace of Spades')
  end
end
