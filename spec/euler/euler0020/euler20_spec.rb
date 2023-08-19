# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0020/euler20"

RSpec.describe Euler20 do
  context "with input 10" do
    it "returns valid number" do
      expect(subject.run(10)).to eq(27)
    end
  end

  context "with input 100" do
    it "returns valid number" do
      expect(subject.run(100)).to eq(648)
    end
  end
end
