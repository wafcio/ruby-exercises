module AdventOfCode2015
  module Day1
    class Part2
      def run(input)
        level = 0
        input.chars.each_with_index do |char, index|
          case char
          when "("
            level += 1
          when ")"
            level -= 1
          end

          return index + 1 if level == -1
        end
      end
    end
  end
end