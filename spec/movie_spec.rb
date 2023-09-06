class Actor 
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      # en este metodo, vamos a llamar de nuevo el metodo act
      actor.act
    end
  end
end

actor = Actor.new("Brad Pitt")
movie = Movie.new(actor)
movie.start_shooting

RSpec.describe Movie do
  # nuestro doble sera el stuntman que recibe los metodos de actor, los implementa y devuelve un valor que puede ser difetente al original
  let(:stuntman) { double("Mr. Danger", ready?: true, act: "Any string at all", fall_off_ladder: "Sure! Let's do it", light_on_fire: true) }
  subject { described_class.new(stuntman) }

  describe "#start_shooting method" do
    it "expects an actor to do 3 actions" do
      # podemos contar las veces que se llama un metodo puede ser con once, twice, exactly(n).times, at_least(n).times, at_most(n).times
      expect(stuntman).to receive(:ready?).exactly(1).times
      expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:fall_off_ladder).at_least(1).times
      expect(stuntman).to receive(:light_on_fire).at_most(1).times
      # expect(stuntman).to receive(:ready?)
      # expect(stuntman).to receive(:act)
      # expect(stuntman).to receive(:fall_off_ladder)
      # expect(stuntman).to receive(:light_on_fire)
      subject.start_shooting
    end
  end
end
