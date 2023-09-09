class Person 
  def a(seconds)
    sleep(seconds)
    "Hello"
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq("Hello")
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      # el instance double solo permite que se implementen metodos que esten definidos en la clase con su cantidad de argumentos
      # person = instance_double(Person, a: "Hello", b: 20)
      # expect(person.a).to eq("Hello")
      # expect(person.b).to eq(20)
      # person = instance_double(Person)
      # allow(person).to receive(:a).with(3, 10).and_return("Hello")
      # expect(person.a(3)).to eq("Hello")
      person = instance_double(Person)
      allow(person).to receive(:a).with(3).and_return("Hello")
      expect(person.a(3)).to eq("Hello")
    end
  end
end
