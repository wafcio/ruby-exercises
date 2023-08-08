require_relative "../../../exercises/euler/euler_0004/euler4"

RSpec.describe Euler4 do
  describe "Euler #4 problem" do
    describe "first example" do
      it "returns valid number" do
        expect(subject.run(2)).to eq(9009)
      end
    end

    describe "second example" do
      it "returns valid number" do
        expect(subject.run(3)).to eq(906609)
      end
    end
  end
end
