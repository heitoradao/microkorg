class Portamento < BinData::Record
  endian :little

  # offset 90
  int16 :t1_porta_time
  int16 :t1_porta_mode
  int16 :t1_transpose
  int16 :t1_finetune
  int16 :t1_pb_range
end
