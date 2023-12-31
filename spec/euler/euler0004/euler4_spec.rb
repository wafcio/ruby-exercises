# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0004/euler4"

RSpec.describe Euler4 do
  context "with input 2" do
    it "returns valid number" do
      expect(subject.run(2)).to eq(9_009)
    end
  end

  context "with input 3" do
    it "returns valid number" do
      expect(subject.run(3)).to eq(906_609)
    end
  end
end
