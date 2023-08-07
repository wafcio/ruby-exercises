require_relative "../../../exercises/euler/euler_0003/euler3"

RSpec.describe Euler3 do
  describe "Euler #3 problem" do
    describe "first example" do
      it "returns valid number" do
        expect(subject.run(13195)).to eq(29)
      end
    end

    describe "second example" do
      it "returns valid number" do
        expect(subject.run(600851475143)).to eq(6857)
      end
    end
  end
end
