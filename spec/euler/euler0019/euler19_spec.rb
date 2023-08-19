# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0019/euler19"

RSpec.describe Euler19 do
  it "returns valid number" do
    expect(subject.run).to eq(171)
  end
end
