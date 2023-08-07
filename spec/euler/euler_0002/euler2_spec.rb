require_relative "../../../exercises/euler/euler_0002/euler2"

RSpec.describe Euler2 do
  describe "Euler #2 problem" do
    it "returns valid number" do
      expect(subject.run(4_000_000)).to eq(4_613_732)
    end
  end
end
