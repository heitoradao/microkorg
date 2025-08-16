class Patch < BinData::Record
  endian :little

  int16 :connected
  int16 :src1
  int16 :src2
  int16 :dst
  int16 :intensity

  string :filler, length: 6

  def src_name(id)
    %w{
      SynSine1
      SynSine2
      SynSine3
      SynSine4
      SynSine5
      SynSine6
      SynSine7

      SynWave1
      SynWave2
      SynWave3
      SynWave4
      SynWave5
      SynWave6
      SynWave7
      SynWave8
    }[id]
  end

  def to_s
    <<~MARKDOWN
      | --- | --- |
      | src1 | #{src1} |
      | src2 | #{src2} |
      | dst | #{dst} |
      | intensity | #{intensity} |
      | connected | #{connected} |
    MARKDOWN
  end
end
