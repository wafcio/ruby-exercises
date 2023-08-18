# frozen_string_literal: true

class Euler12
  def run(limit_divisor_count)
    triangle_number_p = 0
    triangle_number = 0
    divisor_count = 0

    while divisor_count <= limit_divisor_count
      triangle_number_p += 1
      triangle_number += triangle_number_p
      divisors = (1..Math.sqrt(triangle_number)).select { |m| (triangle_number % m).zero? }
      divisor_count = divisors.size * 2
    end

    triangle_number
  end
end
