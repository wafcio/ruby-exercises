class Euler5
  def run(n)
    factors = []

    (2..n).each do |number|
      current_factors = prime_factors(number)
      missing_factors = array_difference(current_factors, factors)
      factors += missing_factors
    end

    factors.inject { |result, n| result * n }
  end

  def array_difference(a, b)
    h = b.each_with_object(Hash.new(0)) { |e,h| h[e] += 1 }
    a.dup.reject { |e| h[e] > 0 && h[e] -= 1 }
  end

  def prime_factors(number)
    m = 2
    numbers = []

    while number > 1
      if number % m == 0
        number = number / m
        numbers << m
      else
        m += 1
      end
    end

    numbers
  end
end
