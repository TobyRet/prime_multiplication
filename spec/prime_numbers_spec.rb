require './lib/prime_numbers.rb'

describe PrimeNumbers do
  describe 'generate' do

    before(:each) do
      @prime_numbers = PrimeNumbers.new
    end

    it 'should not include 1' do
      expect(@prime_numbers.generate(1)).to_not include(1)
    end

    it 'should return the correct number of prime numbers' do
      expect(@prime_numbers.generate(1)).to eql([2])
      expect(@prime_numbers.generate(2)).to eql([2,3])
      expect(@prime_numbers.generate(3)).to eql([2,3,5])
      expect(@prime_numbers.generate(4)).to eql([2,3,5,7])
      expect(@prime_numbers.generate(5)).to eql([2,3,5,7,11])
      expect(@prime_numbers.generate(10)).to eql([2,3,5,7,11,13,17,19,23,29])
    end

    it 'should only accept positive integers as arguments' do
      expect{ @prime_numbers.generate(-1) }.to raise_error(ArgumentError)
      expect{ @prime_numbers.generate('a') }.to raise_error(ArgumentError)
    end
  end
end
