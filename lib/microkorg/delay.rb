class Delay < BinData::Record
  endian :little

  int16 :delay_on
  int16 :delay_type

  # offset 4a0
  string :offset_4a0, length: 12
  int16 :delay_width
  int16 :delay_time

  # offset 4b0
  int16 :delay_depth
  int16 :delay_low_cut
  int16 :offset_4b0_3
  int16 :delay_offset
  int16 :delay_feedback, initial_value: 64
  int16 :delay_dry_wet, initial_value: 50
end
