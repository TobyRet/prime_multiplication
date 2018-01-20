class PrimeNumbers
  def generate(number)
    check_args(number)

    prime_numbers = [2]
    number_to_test = 3

    while prime_numbers.length < number
      if is_prime?(number_to_test)
        prime_numbers.push(number_to_test)
      end

      number_to_test +=1
    end

    prime_numbers
  end

  private

  def is_prime?(number_to_test)
    (2..(number_to_test-1)).each do |i|
      return false if number_to_test % i == 0
    end

    true
  end

  def check_args(number)
    raise ArgumentError, 'Argument must be positive integer' if number < 0 || !number.is_a?(Integer)
  end
end
