# frozen_string_literal: true

class Euler11
  def initialize
    @input = read_grid
    @product = 0
  end

  def run
    check_horizontally_and_vertically
    check_diagonally

    product
  end

  private

  attr_reader :input, :product

  def read_grid
    File.read("exercises/euler/euler0011/grid.txt").split("\n").map(&:split)
  end

  def two_loops(l1, l2, &block)
    (0..l1).each do |i1|
      (0..l2).each do |i2|
        block.call(i1, i2)
      end
    end
  end

  def check_horizontally_and_vertically
    two_loops(19, 16) do |i1, i2|
      memoize_greater(
        calculate_product(i1, static_position, i2, next_postion)
      )

      memoize_greater(
        calculate_product(i2, next_postion, i1, static_position)
      )
    end
  end

  def check_diagonally
    two_loops(16, 16) do |i1, i2|
      memoize_greater(
        calculate_product(i1, next_postion, i2, next_postion)
      )

      memoize_greater(
        calculate_product(i1, ->(base, i) { base + 3 - i }, i2, next_postion)
      )
    end
  end

  def calculate_product(base1, pos1, base2, pos2)
    (0..3).map { |i| input[pos1.call(base1, i)][pos2.call(base2, i)].to_i }.reduce(:*)
  end

  def memoize_greater(new_product)
    @product = new_product if new_product > product
  end

  def static_position
    ->(base, _i) { base }
  end

  def next_postion
    ->(base, i) { base + i }
  end
end
