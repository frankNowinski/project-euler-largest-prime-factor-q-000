# Enter your procedural solution here!

def largest_prime_factor(input)
  prime = input
  (2..Math.sqrt(input).to_i).each do |i|
    break if i <= 1
    prime = prime / i while (prime > i && prime % i == 0)
  end
  prime
end
