require 'prime'

def get_prime(prime_ind)
  Prime.take(prime_ind + 1)[-1]
end

def run(n)
  prime_ind = 0
  largest_prime = get_prime(prime_ind)
  largest_prime_factor = nil

  while (n >= largest_prime)
    if n % largest_prime == 0
      largest_prime_factor = largest_prime
      n /= largest_prime

      p "#{largest_prime_factor}, #{n}"
    end

    prime_ind += 1
    largest_prime = get_prime(prime_ind)
  end

  largest_prime_factor
end

# p run(13195)
p run(600851475143)
