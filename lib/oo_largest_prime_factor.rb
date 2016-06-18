class LargestPrimeFactor
  attr_accessor :number

  def initialize(input)
    @input = input
    @number = largest_prime_number
  end

  def largest_prime_number
    prime = @input
    prime_numbers = []

    (2..Math.sqrt(@input).to_i).each do |i|
      return false if i <= 1
      prime = prime / i while (prime > i && prime % i == 0)
    end
    prime
  end
end

puts LargestPrimeFactor.new(600851475143).number
