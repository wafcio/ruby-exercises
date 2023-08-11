require_relative "../../../exercises/euler/euler0007/euler7"

RSpec.describe Euler7 do
  context "with input 6" do
    it "returns valid number" do
      expect(subject.run(6)).to eq(13)
    end
  end

  context "with input 10_001" do
    it "returns valid number" do
      expect(subject.run(10_001)).to eq(104_743)
    end
  end
end
