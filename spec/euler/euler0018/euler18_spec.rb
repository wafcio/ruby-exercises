# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0018/euler18"

RSpec.describe Euler18 do
  context "with small tree" do
    let(:input) { File.read("spec/support/euler/euler0018/small_tree.txt") }

    it "returns valid number" do
      expect(subject.run(input)).to eq(23)
    end
  end

  context "with big tree" do
    let(:input) { File.read("spec/support/euler/euler0018/big_tree.txt") }

    it "returns valid number" do
      expect(subject.run(input)).to eq(1_074)
    end
  end
end
