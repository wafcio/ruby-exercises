# frozen_string_literal: true

class Euler9
  def initialize
    @a = 1
    @b = 2
  end

  def run(n)
    loop do
      c = calculate_c
      sum = a + b + c

      @b += 1 if sum < n

      if sum > n
        @a += 1
        @b = a + 1
      end

      return a * b * c if sum == n
    end
  end

  private

  attr_reader :a, :b

  def calculate_c
    pow_a = a.pow(2)
    pow_b = b.pow(2)
    Math.sqrt(pow_a + pow_b)
  end
end
