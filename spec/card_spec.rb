# # 1. los failures se resuelven uno a uno, en este caso primero debemos crear la clase Card y luego corremos el test para ver si pasa ese error
# class Card
#   # 3. ahora nos apare el error NoMethodError: undefined method `type' for #<Card:0x00007f9a927344c8> para este caso debemos crear el reader
#   attr_reader :type
#   # 2. ahora nos sale el siguiente error ArgumentError: wrong number of arguments (given 1, expected 0), en este caso pasamos un argumento en el spec pero no pedimos 
#   # ninguno en la clase card, por lo que debemos agregar un argumento a la clase card
#   def initialize  (type)
#     # 4. ahora nos sale el error Failure/Error: expect(card.type).to eq('Ace of Spades') expected: "Ace of Spades" got: nil esto lo solucionamos agregando una 
#     # variable de instancia asignandole el argumento que recibimos en el metodo initialize y con esto nos pasa el example
#     @type = type
#   end
# end
# # el metodo "describe" como su nombre lo sugiere, describe que es lo que estamos testiando, en este caso la clase "Card", 
# # recibe como parametro un string con el nombre de la clase que estamos testeando(aunque podemos invocarlo sin argumentos), y un bloque de codigo que contiene los test que queremos realizar delimitados
# # dentro de un do      end. en el ecosistema de Rspec un tes es llamado un example, un example de como debe funcionar. tambien podemos agrupar examples
# RSpec.describe 'Card' do
#   # con el metodo "it" podemos definir un example, que es un test que queremos realizar, 
#   # recibe como parametro un string con el nombre del test que estamos realizando (debe ser muy descriptivo sobre que debe suceder o que debe ser funcional) 
#   # y un bloque de codigo que contiene el test que queremos realizar delimitados dentro de un do      end.
#   # tanto "describe" como 'it' estan disponibles de manera global en el ecosistema de Rspec
#   it 'has a type' do
#     # asumimos que la clase Card ya esta definida y que tiene un metodo llamado type que retorna el tipo de la carta y 
#     # que podemos instanciar un objeto de la clase Card y asignarlo a la variable card
#     card = Card.new('Ace of Spades')
#     # con el metodo "expect" podemos definir una expectativa, que es una condicion que debe cumplir el test para que sea exitoso, puede recibir como argumento un 
#     # objeto, un atributo de un objeto, un metodo de un objeto, una expresion plana de ruby etc. en este caso recibe como argumento el objeto card
#     # con el metodo "eq" que es un matcher, que es un metodo que compara el resultado de un test con un valor esperado dado en el argumento, en este caso 
#     # el valor esperado es el string 'Ace of Spades', como resultado del type de la carta.
#     expect(card.type).to eq('Ace of Spades')
#   end
# end

# ----------------------------------------- DESDE ACA COMIENZA MULTIPLE EXAMPLES-----------------------------------------
class Card
  attr_reader :rank, :suit
  def initialize (rank, suit)
    @rank = rank
    @suit = suit
  end
end

# en este ejercicio, vamos a recibir dos argumentos que me lanzaran error que no existe el metodo rank y suit, por lo que debemos crearlos en la clase card de arriba
RSpec.describe 'Card' do
  it 'has a rank' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end
end
