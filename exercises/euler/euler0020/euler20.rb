# frozen_string_literal: true

class Euler20
  def run(n)
    factorial(n)
      .to_s
      .chars
      .map(&:to_i)
      .sum
  end

  private

  def factorial(n)
    n.downto(1).inject(:*)
  end
end
