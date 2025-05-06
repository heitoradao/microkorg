# frozen_string_literal: true

RSpec.describe Microkorg::Program do
  it 'can load a microkorg binary patch file' do
    filename = 'U_A1_Init_Program.mk2prog'
    p = Microkorg::Program.new(filename)

    expect(p.valid?).to eq(true)
    expect(p.filename).to eq('U_A1_Init_Program.mk2prog')
  end
end

