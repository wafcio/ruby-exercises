# frozen_string_literal: true

class Euler16
  def run(power)
    number = 2**power
    number
      .to_s
      .chars
      .inject(0) { |total, digit| total + digit.to_i }
  end
end
