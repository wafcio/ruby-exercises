require_relative "../../../exercises/euler/euler0003/euler3"

RSpec.describe Euler3 do
  context "with input 13_195" do
    it "returns valid number" do
      expect(subject.run(13_195)).to eq(29)
    end
  end

  context "with input 600_851_475_143" do
    it "returns valid number" do
      expect(subject.run(60_0851_475_143)).to eq(6_857)
    end
  end
end
