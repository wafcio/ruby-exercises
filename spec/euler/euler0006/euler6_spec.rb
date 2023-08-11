require_relative "../../../exercises/euler/euler0006/euler6"

RSpec.describe Euler6 do
  context "with input 10" do
    it "returns valid number" do
      expect(subject.run(10)).to eq(2_640)
    end
  end

  context "with input 100" do
    it "returns valid number" do
      expect(subject.run(100)).to eq(25_164_150)
    end
  end
end
