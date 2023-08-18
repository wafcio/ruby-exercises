# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0013/euler13"

RSpec.describe Euler13 do
  it "returns valid number" do
    expect(subject.run).to eq("5537376230")
  end
end
