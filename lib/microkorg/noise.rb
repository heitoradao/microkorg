class Noise < BinData::Record
  endian :little

  int16 :noise_type
  int16 :color
  int16 :level
  int16 :unknow
end
