class Arpegiator < BinData::Record
  endian :little

  int16 :on, initial_value: 0
  int16 :offset_330_7 # target batch on ?
  int16 :offset_330_8
  
  # offset 340
  int16 :unknow1
  int16 :octave
  int16 :unknow3 # target_batch_on ?
  int16 :gate_time
  int16 :last_step
  int16 :swing
  int16 :unknow7
  int16 :unknow8
  # string :offset_340, length: 14
  
  # string :offset_350, length: 16
  int16 :offset_350
  int16 :offset_352
  int16 :offset_354
  int16 :offset_356
  
  array :arp_track, type: :int16, initial_length: 8
end
