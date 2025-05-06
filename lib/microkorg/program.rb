
class Microkorg::Program #< BinData::Record
  attr_accessor :filename
  

  def initialize(*args)
    if (args.size == 1)
      @filename = args.shift
    end
    @valid = true
  end

  def raw_content
    @raw ||= File.read(filename)
  end

  def name
    'Init Program'
  end

  def mixer
    [127, 0, 0]
  end

  def osc1
    [1, 2, 3, 4, 5]
  end

  def osc2
    osc1
  end

  def noise
    [1, 2, 3]
  end

  def awp_eg
    [1, 2, 3, 4]
  end

  def filter_ef
    [1, 2, 3, 4]
  end

  def valid?
    @valid
  end
end

