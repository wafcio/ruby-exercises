class Euler10
  def run(n)
    (2...n).select { |number| prime?(number) }.sum
  end

  def prime?(number)
    sq = Math.sqrt(number).to_i

    (2..sq).each do |factor|
      return false if number % factor == 0
    end

    return true
  end
end
