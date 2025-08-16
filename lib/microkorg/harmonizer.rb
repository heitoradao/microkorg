class Harmonizer < BinData::Record
  endian :little

  int16 :on
  int16 :harmony_number
  int16 :level
  int16 :stereo
  int16 :formant
  int16 :detune
  int16 :delay
end
