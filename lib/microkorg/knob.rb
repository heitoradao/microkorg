class Knob < BinData::Record
  endian :little

  int16 :knob_dest
  int16 :unknow1
  int16 :unknow2
end
