
class Osc < BinData::Record
  endian :little

  int16 :wave
  int16 :shape
  int16 :mod
  int16 :sample
  int16 :level
  int16 :unknow
  int16 :semitones
  int16 :finetune
  int16 :noise_kbd

  string :filler, length: 6
end

