class Euler7
  def run(n)
    i = 0
    number = 2

    while true do
      i += 1 if prime?(number)
      break if i == n

      number += 1
    end

    number
  end

  def prime?(number)
    sq = Math.sqrt(number).to_i

    (2..sq).each do |factor|
      return false if number % factor == 0
    end

    return true
  end
end
