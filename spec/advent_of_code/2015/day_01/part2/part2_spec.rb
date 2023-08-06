require_relative "../../../../../exercises/advent_of_code/2015/day_01/part2/part2"

RSpec.describe AdventOfCode2015::Day1::Part2 do
  describe "first example" do
    let(:input) { ")" }

    it "return valid number" do
      expect(subject.run(input)).to eq(1)
    end
  end

  describe "second example" do
    let(:input) { "()())" }

    it "return valid number" do
      expect(subject.run(input)).to eq(5)
    end
  end

  describe "third example" do
    let(:input) { File.read("spec/support/advent_of_code/2015/day_01/input.txt") }

    it "return valid number" do
      expect(subject.run(input)).to eq(1795)
    end
  end
end
