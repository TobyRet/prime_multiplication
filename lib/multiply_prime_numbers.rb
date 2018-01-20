require './lib/multiply_prime_numbers/table_formatter.rb'
require './lib/multiply_prime_numbers/table_generator.rb'
require './lib/multiply_prime_numbers/prime_numbers.rb'
require 'pry'


prime_numbers = PrimeNumbers.new.generate(8)
table_generator = TableGenerator.new(prime_numbers)
headers = table_generator.header
rows = table_generator.rows

puts TableFormatter.new.draw(headers, rows) 
