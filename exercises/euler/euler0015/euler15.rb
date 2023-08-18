# frozen_string_literal: true

class Euler15
  def run(size)
    grid = prepare_grid(size)

    (1..size).each do |i|
      (1..size).each do |j|
        grid[i][j] = grid[i - 1][j] + grid[i][j - 1]
      end
    end

    grid[size][size]
  end

  private

  def prepare_grid(size)
    grid = Array.new(size + 1, [])
    (0..size).each do |position|
      grid[position] = Array.new(size + 1, 0)
      grid[position][0] = 1
      grid[0][position] = 1
    end
    grid
  end
end
