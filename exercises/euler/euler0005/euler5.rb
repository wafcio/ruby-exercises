# frozen_string_literal: true

class Euler5
  def run(n)
    factors = []

    (2..n).each do |number|
      current_factors = prime_factors(number)
      missing_factors = array_difference(current_factors, factors)
      factors += missing_factors
    end

    factors.inject { |result, m| result * m }
  end

  def array_difference(a, b)
    h = b.each_with_object(Hash.new(0)) { |e, hsh| hsh[e] += 1 }
    a.dup.reject { |e| (h[e]).positive? && h[e] -= 1 }
  end

  def prime_factors(number, m = 2, numbers = [])
    while number > 1
      if (number % m).zero?
        number /= m
        numbers << m
      else
        m += 1
      end
    end

    numbers
  end
end
