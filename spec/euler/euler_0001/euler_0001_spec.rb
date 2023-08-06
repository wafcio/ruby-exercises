require_relative "../../../exercises/euler/euler_0001/euler_0001"

RSpec.describe Euler1 do
  describe "Euler #1 problem" do
    it "returns valid git" do
      expect(subject.run).to eq(233_168)
    end
  end
end

