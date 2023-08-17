# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0011/euler11"

RSpec.describe Euler11 do
  it "returns valid number" do
    expect(subject.run).to eq(70_600_674)
  end
end
