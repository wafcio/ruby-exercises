# frozen_string_literal: true

require_relative "../../../../exercises/advent_of_code/aoc2015/day01/part2"

RSpec.describe AdventOfCode::Aoc2015::Day01::Part2 do
  context "with input )" do
    let(:input) { ")" }

    it "return valid number" do
      expect(subject.run(input)).to eq(1)
    end
  end

  context "with input ()())" do
    let(:input) { "()())" }

    it "return valid number" do
      expect(subject.run(input)).to eq(5)
    end
  end

  context "with big input" do
    let(:input) { File.read("spec/support/advent_of_code/2015/day_01/input.txt") }

    it "return valid number" do
      expect(subject.run(input)).to eq(1795)
    end
  end
end
