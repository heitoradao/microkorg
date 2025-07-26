
RSpec.describe Microkorg::Program do
  it 'can load a microkorg binary patch file' do
    #Dir.path(__FILE__)
    #filename = 'spec/U_A1_Init_Program.mk2prog'
    filename = 'data/init_program_102.mk2prog'
    io = File.open(filename, 'r')
    
    p = Microkorg::Program.read(io)

    expect(p.header).to eq("MK2PROG\x00")
    expect(p.name.delete("\x00")).to eq("Init Program".force_encoding('ASCII-8BIT'))
    #expect(p.valid?).to eq(true)
    #expect(p.filename).to eq('U_A1_Init_Program.mk2prog')
  end
end

