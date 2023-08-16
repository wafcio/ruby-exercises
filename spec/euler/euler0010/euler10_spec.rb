# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0010/euler10"

RSpec.describe Euler10 do
  context "with input 10" do
    it "returns valid number" do
      expect(subject.run(10)).to eq(17)
    end
  end

  context "with input 2_000_000" do
    it "returns valid number" do
      expect(subject.run(2_000_000)).to eq(142_913_828_922)
    end
  end
end
