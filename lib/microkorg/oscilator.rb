class Oscilator < BinData::Record
  endian :little

  int16 :wave
  int16 :shape
  int16 :mod
  int16 :sample
  int16 :level
  int16 :unknow
  int16 :semitones
  int16 :finetune

  def dwgs_name(id)
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
      | wave | #{wave} |
      | shape | #{shape} |
      | mod | #{mod} (#{dwgs_name(mod)}) |
      | sample | #{sample} |
      | level | #{level} |
      | semitones | #{semitones} |
      | finetune | #{finetune} |
    MARKDOWN
  end
end
