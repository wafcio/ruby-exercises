require_relative "../../../exercises/euler/euler_0001/euler1"

RSpec.describe Euler1 do
  describe "Euler #1 problem" do
    it "returns valid number" do
      expect(subject.run(999)).to eq(233_168)
    end
  end
end
