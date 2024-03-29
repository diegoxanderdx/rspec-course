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
  # para que podamos tener acceso de escritura y lectura a los atributos de la clase Card, debemos cambiar a los metodos attr_accessor :rank, :suit
  attr_accessor :rank, :suit
  def initialize (rank, suit)
    @rank = rank
    @suit = suit
  end
end

# en este ejercicio, vamos a recibir dos argumentos que me lanzaran error que no existe el metodo rank y suit, por lo que debemos crearlos en la clase card de arriba
RSpec.describe 'Card' do
  # un hook es una pieza de codigo que se ejecuta automaticamente en un punto especifico del ciclo de vida de un test, en este caso el before hook,
  # se ejecuta antes de cada example (before-example-before-example) y nos ayuda a mentener nuestro codigo DRY. 
  # before do
  #   # las variables de instancia nos ayudan a persistir datos que de otra manera se perderian al finalizar el bloque de codigo en el que se encuentran,
  #   # en este caso tendremos @card disponible en cada example
  #   @card = Card.new('Ace', 'Spades')
  # end

  # un metodo helper es un metodo que nos ayuda a mantener nuestro codigo DRY, en este caso el metodo card nos ayuda a crear una instancia de la clase Card
  # def card
  #   Card.new('Ace', 'Spades')
  # end
  # para el metodo let debemos entender el concepto de memoization, que no yendo lejos es un caching de un valor, que es diciendolo de forma sencilla, cuando 
  # la maquina se encuentra con un mismo problema por resolver, recuerda la solucion y dice que no va a gastar procesamiento en resolverlo de nuevo, sino que
  # va a usar la solucion que ya tiene guardada en memoria. en este caso el metodo let nos ayuda a crear una instancia de la clase Card y a guardarla en memoria
  # la sintaxis del metodo let es la siguiente: let(:nombre_de_la_variable) { valor_de_la_variable } el nombre de la vasriable debe ser un simbolo y el valor de la variable
  # puede ser cualquier cosa, un objeto, un string, un numero, un array, un hash, un metodo, etc. en este caso el valor de la variable es un objeto de la clase Card va a ser 
  # un objeto nuevo de la clase Card
  let(:card) { Card.new('Ace', 'Spades') }
  
  it 'has a rank an it can change' do
    expect(card.rank).to eq('Ace')
    # supongamos que queremos cambiar el valor de rank a 'Queen' para este example y crear una nueva expect, pero con el metodo anterior se llama 
    # el metodo card cada vez que aparece la palabra card y se escriben los valores que hay dentro del metodo card por lo que en las siguientes lineas se llamara
    # dos veces y no asertaremos con el nuevo valor "Queen" sino con el valor "Ace" que contiene el metodo card
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    # un mensaje de error personalizado nos ayuda a entender mejor que es lo que esta fallando en nuestro test, en este caso el mensaje de error es el siguiente:
    card.suit = 'Nonsense'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!"
  end
end
