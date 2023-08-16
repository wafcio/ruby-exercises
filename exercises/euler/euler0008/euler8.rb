# frozen_string_literal: true

class Euler8
  def initialize
    @big_number = read_big_number
    @product = 0
  end

  def run(n)
    (1..(big_number.size - n + 1)).each do |position|
      temp_product = calculate_product(position, n)
      @product = temp_product if temp_product > product
    end

    product
  end

  private

  attr_reader :big_number, :product

  def read_big_number
    File.read("exercises/euler/euler0008/big_number.txt").gsub("\n", "")
  end

  def calculate_product(position, n)
    big_number[(position - 1), n]
      .chars
      .map(&:to_i)
      .reduce(:*)
  end
end
