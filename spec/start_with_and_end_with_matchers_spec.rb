# como sus nombres lo indican, estos matchers verifican que un objeto empiece o termine con un valor específico. es case sensitive
Rspec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to end_with(:d)
    end

    it { is_expected.to start_with(:a) }
    it { is_expected.to end_with(:d) }
  end
end
