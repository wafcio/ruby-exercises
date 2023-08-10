require_relative "../../../exercises/euler/euler0001/euler1"

RSpec.describe Euler1 do
  context "with input 9" do
    it "returns valid number" do
      expect(subject.run(9)).to eq(23)
    end
  end

  context "with input 999" do
    it "returns valid number" do
      expect(subject.run(999)).to eq(233_168)
    end
  end
end
