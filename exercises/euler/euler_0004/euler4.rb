class Euler4
  def run(n)
    a = ("1" + ("0" * (n - 1))).to_i
    b = 0
    largest_palindrom = 0

    while a <= ("9" * n).to_i
      b = a

      while b <= ("9" * n).to_i
        result = a * b

        if result.to_s == result.to_s.reverse && result > largest_palindrom
          largest_palindrom = result
        end

        b += 1
      end

      a += 1
    end

    largest_palindrom
  end
end
