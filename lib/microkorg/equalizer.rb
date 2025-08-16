class Equalizer < BinData::Record
  endian :little

  # offset 52e
  int16 :eq_on
  int16 :offset_520_8_low_freq # eq_low_freq ?

  # offset 530
  int16 :offset_530_high_freq # eq_high_freq ?
  int16 :eq_low_gain
  int16 :eq_high_gain
  int16 :eq_feedback
end
