# frozen_string_literal: true

class Euler19
  def run
    (1901..2000).inject(0) do |memo, year|
      (1..12).inject(memo) do |memo2, month|
        memo2 + (Date.parse("#{year}-#{month}-01").wday.zero? ? 1 : 0)
      end
    end
  end
end
