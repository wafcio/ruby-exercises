require_relative "../../../exercises/euler/euler0009/euler9"

RSpec.describe Euler9 do
  context "with input 12" do
    it "returns valid number" do
      expect(subject.run(12)).to eq(60)
    end
  end

  context "with input 1_000" do
    it "returns valid number" do
      expect(subject.run(1_000)).to eq(31_875_000)
    end
  end
end
