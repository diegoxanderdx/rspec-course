class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end
end

# have_attributes verifica que un objeto tenga atributos específicos y que tengan los valores esperados.
RSpec.describe "have_attributes matcher" do
  describe Person.new("John", 32) do
    it "checks for object attribute and proper values" do
      expect(subject).to have_attributes(name: "John", age: 32)
      expect(subject).to have_attributes(name: starting_with("J"), age: (be >= 30))
    end

    it { is_expected.to have_attributes(name: "John", age: 32) }
    it { is_expected.to have_attributes(name: starting_with("J"), age: (be >= 30)) }
  end
end
