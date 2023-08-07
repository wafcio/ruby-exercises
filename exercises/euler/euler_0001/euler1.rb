class Euler1
  def run(n)
    (1..n)
      .select { |number| number % 3 == 0 || number % 5 == 0 }
      .sum
  end
end
