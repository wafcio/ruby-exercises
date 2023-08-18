# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0012/euler12"

RSpec.describe Euler12 do
  context "with input 5" do
    it "returns valid number" do
      expect(subject.run(5)).to eq(28)
    end
  end

  context "with input 100" do
    it "returns valid number" do
      expect(subject.run(100)).to eq(73_920)
    end
  end

  context "with input 500" do
    it "returns valid number" do
      expect(subject.run(500)).to eq(76_576_500)
    end
  end
end
