class Euler1
  def run
    (1..999)
      .select { |number| number % 3 == 0 || number % 5 == 0 }
      .sum
  end
end
