# frozen_string_literal: true

module AdventOfCode
  module Aoc2015
    module Day01
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
end
