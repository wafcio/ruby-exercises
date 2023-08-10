require_relative "../../../exercises/euler/euler_0002/euler2"

RSpec.describe Euler2 do
  context "with input 4_000_000" do
    it "returns valid number" do
      expect(subject.run(4_000_000)).to eq(4_613_732)
    end
  end
end
