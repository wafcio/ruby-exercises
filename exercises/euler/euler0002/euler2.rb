# frozen_string_literal: true

class Euler2
  def initialize
    @num1 = 1
    @num2 = 2
    @sum = @num2
    @value = -1
  end

  def run(n)
    while value < n
      @value = num1 + num2
      @sum += value if value.even?
      @num1 = num2
      @num2 = value
    end

    sum
  end

  private

  attr_reader :num1, :num2, :sum, :value

  # def calculate_sum(num1, num2, sum)
end
