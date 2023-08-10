class Euler2
  def run(n)
    num1 = 1
    num2 = 2
    sum = num2
    value = -1

    while value < n
      value = num1 + num2

      if value % 2 == 0
        sum += value
      end

      num1 = num2
      num2 = value
    end

    sum
  end
end
