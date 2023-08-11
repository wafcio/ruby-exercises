require_relative "../../../exercises/euler/euler0008/euler8"

RSpec.describe Euler8 do
  context "with input 4" do
    it "returns valid number" do
      expect(subject.run(4)).to eq(5832)
    end
  end

  context "with input 13" do
    it "returns valid number" do
      expect(subject.run(13)).to eq(23_514_624_000)
    end
  end
end
