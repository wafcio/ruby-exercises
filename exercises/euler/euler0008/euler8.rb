class Euler8
  def run(n)
    big_number = read_big_number
    product = 0

    (1..(big_number.size - n + 1)).each do |position|
      temp_product =
        big_number[(position - 1), n]
          .chars
          .map { |char| char.to_i }
          .reduce(:*)

      if temp_product > product
        product = temp_product
      end
    end

    product
  end

  def read_big_number
    File.read("exercises/euler/euler0008/big_number.txt").gsub("\n", "")
  end
end
