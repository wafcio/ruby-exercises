# frozen_string_literal: true

class Euler3
  def run(n)
    m = 2

    while n > 1
      if (n % m).zero?
        n /= m
      else
        m += 1
      end
    end

    m
  end
end
