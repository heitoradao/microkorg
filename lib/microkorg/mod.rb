class Mod < BinData::Record
  endian :little

  int16 :on
  int16 :mode_type
  int16 :offset_460_1
  int16 :offset_460_2
  int16 :offset_460_3
  int16 :offset_460_4
  int16 :offset_460_5
  int16 :offset_460_6 # mod_sub_type
  int16 :mod_speed  
  int16 :mod_depth

  # offset 470
  int16 :offset_470_1
  int16 :mod_low_cut
  int16 :mod_manual
  int16 :mod_width
  int16 :offset_470_5
  int16 :mod_dry_wet
end
