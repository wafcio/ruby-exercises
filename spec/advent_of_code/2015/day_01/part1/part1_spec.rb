require_relative "../../../../../exercises/advent_of_code/2015/day_01/part1/part1"

RSpec.describe AdventOfCode2015::Day1::Part1 do
  describe "first example" do
    let(:input) { "(())" }

    it "return valid number" do
      expect(subject.run(input)).to eq(0)
    end
  end

  describe "second example" do
    let(:input) { "()()" }

    it "return valid number" do
      expect(subject.run(input)).to eq(0)
    end
  end

  describe "third example" do
    let(:input) { "(((" }

    it "return valid number" do
      expect(subject.run(input)).to eq(3)
    end
  end

  describe "fourth example" do
    let(:input) { "(()(()(" }

    it "return valid number" do
      expect(subject.run(input)).to eq(3)
    end
  end

  describe "fifth example" do
    let(:input) { "))(((((" }

    it "return valid number" do
      expect(subject.run(input)).to eq(3)
    end
  end

  describe "sixth example" do
    let(:input) { "())" }

    it "return valid number" do
      expect(subject.run(input)).to eq(-1)
    end
  end

  describe "seventh example" do
    let(:input) { "))(" }

    it "return valid number" do
      expect(subject.run(input)).to eq(-1)
    end
  end

  describe "eighth example" do
    let(:input) { ")))" }

    it "return valid number" do
      expect(subject.run(input)).to eq(-3)
    end
  end

  describe "ninth example" do
    let(:input) { ")())())" }

    it "return valid number" do
      expect(subject.run(input)).to eq(-3)
    end
  end

  describe "tenth example" do
    let(:input) { File.read("spec/support/advent_of_code/2015/day_01/input.txt") }

    it "return valid number" do
      expect(subject.run(input)).to eq(74)
    end
  end
end
