require './lib/multiply_prime_numbers/table_formatter.rb'
require './lib/multiply_prime_numbers/table_generator.rb'
require './lib/multiply_prime_numbers/prime_number_generator.rb'

module MultiplyPrimeNumbers
  def self.print(number_of_primes)
    prime_numbers = PrimeNumberGenerator.generate(number_of_primes)
    table_generator = TableGenerator.new(prime_numbers)
    headers = table_generator.header
    rows = table_generator.rows(:*)

    puts TableFormatter.draw(headers, rows)
  end
end
