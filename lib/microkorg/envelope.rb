class Envelope < BinData::Record
  endian :little

  int16 :attack
  int16 :decay
  int16 :sustain
  int16 :release
end
