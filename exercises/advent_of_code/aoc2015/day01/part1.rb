# frozen_string_literal: true

module AdventOfCode
  module Aoc2015
    module Day01
      class Part1
        def run(input)
          input.chars.inject(0) do |acc, char|
            case char
            when "("
              acc + 1
            when ")"
              acc - 1
            else
              acc
            end
          end
        end
      end
    end
  end
end
