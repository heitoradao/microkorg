class Delay < BinData::Record
  endian :little

  int16 :on
  int16 :delay_type

  # offset 4a0
  string :offset_4a0, length: 12
  int16 :width    # shift, if type == 'pitch shift'
                  # reduct, if type == 'loRes'

  int16 :time

  # offset 4b0
  int16 :depth
  int16 :low_cut
  int16 :offset_4b0_3
  int16 :offset
  int16 :feedback, initial_value: 64
  int16 :dry_wet, initial_value: 50
end
