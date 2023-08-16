# frozen_string_literal: true

class Euler7
  def run(n)
    i = 0
    number = 2

    loop do
      i += 1 if prime?(number)
      break if i == n

      number += 1
    end

    number
  end

  def prime?(number)
    sq = Math.sqrt(number).to_i

    (2..sq).each do |factor|
      return false if (number % factor).zero?
    end

    true
  end
end
