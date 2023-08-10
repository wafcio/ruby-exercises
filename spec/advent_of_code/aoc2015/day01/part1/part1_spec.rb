require_relative "../../../../../exercises/advent_of_code/aoc2015/day01/part1/part1"

RSpec.describe AdventOfCode2015::Day1::Part1 do
  context "with input (())" do
    let(:input) { "(())" }

    it "return valid number" do
      expect(subject.run(input)).to eq(0)
    end
  end

  context "with input ()()" do
    let(:input) { "()()" }

    it "return valid number" do
      expect(subject.run(input)).to eq(0)
    end
  end

  context "with input (((" do
    let(:input) { "(((" }

    it "return valid number" do
      expect(subject.run(input)).to eq(3)
    end
  end

  context "with input (()(()(" do
    let(:input) { "(()(()(" }

    it "return valid number" do
      expect(subject.run(input)).to eq(3)
    end
  end

  context "with input ))(((((" do
    let(:input) { "))(((((" }

    it "return valid number" do
      expect(subject.run(input)).to eq(3)
    end
  end

  context "with input ())" do
    let(:input) { "())" }

    it "return valid number" do
      expect(subject.run(input)).to eq(-1)
    end
  end

  context "with input ))(" do
    let(:input) { "))(" }

    it "return valid number" do
      expect(subject.run(input)).to eq(-1)
    end
  end

  context "with input )))" do
    let(:input) { ")))" }

    it "return valid number" do
      expect(subject.run(input)).to eq(-3)
    end
  end

  context "with input )())())" do
    let(:input) { ")())())" }

    it "return valid number" do
      expect(subject.run(input)).to eq(-3)
    end
  end

  context "with big input" do
    let(:input) { File.read("spec/support/advent_of_code/2015/day_01/input.txt") }

    it "return valid number" do
      expect(subject.run(input)).to eq(74)
    end
  end
end
