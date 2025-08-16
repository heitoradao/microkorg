class Reverb < BinData::Record
  endian :little

  int16 :on
  int16 :reverb_type
  string :offset_4e0, length: 12

  # rust_age
  # pitch shift
  int16 :type_param

  int16 :time
  int16 :depth
  int16 :damp
  int16 :pre_delay
  int16 :width
  int16 :reverb_size
  int16 :dry_wet
end
