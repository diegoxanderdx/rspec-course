# un mock es emular o reemplazar algo real con otro objeto que es la simulacion del real,un double se puede comparar con un actor doble que realiza las 
# acciones peligrosas que el actor principal no podria realizar, para ello este doble debe tener caracteristicas similares al actor principal
RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # se usa la palabra reservada double para crear un doble y se pasan como argumentos, primero un string que identifica el double y luego los metodos que se 
    # quieren simular en un hash con el nombre del metodo y el valor que se quiere que retorne
    
    # stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # tambien se puede enviar como argumento el string identificador y usar los siguientes metodos y sintaxis
    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman).to receive(:light_on_fire).to eq('Ouch')

    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end
