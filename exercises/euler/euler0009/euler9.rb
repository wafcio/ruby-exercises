class Euler9
  def run(n)
    a = 1
    b = 2

    while true
      pow_a = a.pow(2)
      pow_b = b.pow(2)
      c = Math.sqrt(pow_a + pow_b)
      sum = a + b + c

      if sum < n
        b += 1
      end

      if sum > n
        a += 1
        b = a + 1
      end

      if sum == n
        return a * b * c
      end
    end
  end
end
