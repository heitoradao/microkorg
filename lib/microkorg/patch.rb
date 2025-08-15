
class Patch < BinData::Record
  endian :little

  int16 :connected
  int16 :src1
  int16 :src2
  int16 :dst
  int16 :intensity

  string :filler, length: 6
end

