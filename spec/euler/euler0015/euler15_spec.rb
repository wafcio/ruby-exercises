# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0015/euler15"

RSpec.describe Euler15 do
  context "with input 2" do
    it "returns valid number" do
      expect(subject.run(2)).to eq(6)
    end
  end

  context "with input 20" do
    it "returns valid number" do
      expect(subject.run(20)).to eq(137_846_528_820)
    end
  end
end
