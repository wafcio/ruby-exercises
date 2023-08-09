require_relative "../../../exercises/euler/euler_0005/euler5"

RSpec.describe Euler5 do
  describe "Euler #5 problem" do
    describe "first example" do
      it "returns valid number" do
        expect(subject.run(10)).to eq(2520)
      end
    end

    describe "second example" do
      it "returns valid number" do
        expect(subject.run(20)).to eq(232792560)
      end
    end
  end
end
