# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0017/euler17"

RSpec.describe Euler17 do
  context "with input 5" do
    it "returns valid number" do
      expect(subject.run(5)).to eq(19)
    end
  end

  context "with input 1_000" do
    it "returns valid number" do
      expect(subject.run(1_000)).to eq(21_124)
    end
  end
end
