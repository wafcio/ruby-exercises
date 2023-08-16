# frozen_string_literal: true

class Euler4
  def initialize
    @largest_palindrom = 0
  end

  def run(n)
    start = "1#{'0' * (n - 1)}".to_i
    max = ("9" * n).to_i

    (start..max).each do |a|
      (a..max).each do |b|
        save_largest_palindrom(a * b)
      end
    end

    largest_palindrom
  end

  private

  attr_reader :largest_palindrom

  def save_largest_palindrom(result)
    return unless result.to_s == result.to_s.reverse && result > largest_palindrom

    @largest_palindrom = result
  end
end
