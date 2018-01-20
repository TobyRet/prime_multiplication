require './lib/multiply_prime_numbers/prime_number_generator.rb'

describe PrimeNumberGenerator do
  describe 'generate' do
    it 'should not include 1' do
      expect(PrimeNumberGenerator.generate(1)).to_not include(1)
    end

    it 'should return the correct number of prime numbers' do
      expect(PrimeNumberGenerator.generate(1)).to eql([2])
      expect(PrimeNumberGenerator.generate(2)).to eql([2,3])
      expect(PrimeNumberGenerator.generate(3)).to eql([2,3,5])
      expect(PrimeNumberGenerator.generate(4)).to eql([2,3,5,7])
      expect(PrimeNumberGenerator.generate(5)).to eql([2,3,5,7,11])
      expect(PrimeNumberGenerator.generate(10)).to eql([2,3,5,7,11,13,17,19,23,29])
    end

    it 'should only accept positive integers as arguments' do
      expect{ PrimeNumberGenerator.generate(-1) }.to raise_error(ArgumentError)
      expect{ PrimeNumberGenerator.generate('a') }.to raise_error(ArgumentError)
    end
  end
end
