# frozen_string_literal: true

class Euler13
  def run
    File
      .read("exercises/euler/euler0013/big_numbers.txt")
      .split("\n")
      .inject(0) { |total, number| total + number.to_i }
      .to_s[0, 10]
  end
end
