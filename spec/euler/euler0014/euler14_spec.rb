# frozen_string_literal: true

require_relative "../../../exercises/euler/euler0014/euler14"

RSpec.describe Euler14 do
  it "returns valid number" do
    expect(subject.run).to eq(837_799)
  end
end
