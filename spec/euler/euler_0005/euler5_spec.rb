require_relative "../../../exercises/euler/euler_0005/euler5"

RSpec.describe Euler5 do
  context "with input 10" do
    it "returns valid number" do
      expect(subject.run(10)).to eq(2_520)
    end
  end

  context "with input 20" do
    it "returns valid number" do
      expect(subject.run(20)).to eq(232_792_560)
    end
  end
end
