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
  int16 :speed # wow 
  int16 :depth # fso

  # offset 470
  int16 :saturation
  int16 :low_cut
  int16 :manual
  int16 :width
  int16 :feedback
  int16 :dry_wet
end
