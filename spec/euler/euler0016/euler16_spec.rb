# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0016/euler16"

RSpec.describe Euler16 do
  context "with input 15" do
    it "returns valid number" do
      expect(subject.run(15)).to eq(26)
    end
  end

  context "with input 1_000" do
    it "returns valid number" do
      expect(subject.run(1_000)).to eq(1_366)
    end
  end
end
