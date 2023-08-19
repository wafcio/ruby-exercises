# frozen_string_literal: true

class Euler18
  def run(data)
    @triangle = parse_data(data)
    calculate_max_sum
  end

  private

  def parse_data(data)
    data.split("\n").map { |line| line.strip.split(/\s+/).map(&:to_i) }
  end

  def calculate_max_sum(x = 0, y = 0)
    case y
    when @triangle.length - 1
      @triangle[y][x]
    else
      [calculate_max_sum(x, y + 1), calculate_max_sum(x + 1, y + 1)].sort.pop + @triangle[y][x]
    end
  end
end
