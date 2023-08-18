# frozen_string_literal: true

class Euler14
  def run
    max = 0
    start = 0
    1.upto(1_000_000).each do |x|
      c = count_terms(x)
      if c > max
        max = c
        start = x
      end
    end

    start
  end

  def count_terms(n)
    return 0 if n <= 0

    c = 1
    while n > 1
      n = n.even? ? n / 2 : (3 * n) + 1
      c += 1
    end

    c
  end
end
