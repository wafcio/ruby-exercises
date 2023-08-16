# frozen_string_literal: true

class Euler1
  def run(n)
    (1..n)
      .select { |number| (number % 3).zero? || (number % 5).zero? }
      .sum
  end
end
