# frozen_string_literal: true

class Euler6
  def run(n)
    num1 = (1..n).map { |m| m.pow(2) }.sum

    num2 = (1..n).sum.pow(2)

    num2 - num1
  end
end
