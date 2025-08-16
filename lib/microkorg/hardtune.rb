class Hardtune < BinData::Record
  endian :little

  int16 :on
  int16 :intensity
  int16 :speed
  int16 :formant
end
