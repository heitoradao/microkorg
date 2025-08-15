class Vocoder < BinData::Record
  endian :little

  int16 :on
  int16 :mic_direct
  int16 :synth_dry_wet
  int16 :formant
  int16 :resonance
  int16 :env_follower_sens

  int16 :unknow1
  int16 :unknow2
  
  array :band_level, type: :int16, initial_length: 16
  array :band_pan, type: :int16, initial_length: 16
end
