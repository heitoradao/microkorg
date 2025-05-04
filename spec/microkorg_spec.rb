# frozen_string_literal: true

RSpec.describe Microkorg do
  it "has a version number" do
    expect(Microkorg::VERSION).not_to be nil
  end

  it "instantiales a Program class" do
    p = Microkorg::Program.new

    expect(p).to not_eq(nil)
  end
end
