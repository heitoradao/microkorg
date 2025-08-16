class Filter < BinData::Record
  endian :little

  int16 :filter_type
  int16 :filter_cutoff
  int16 :filter_resonance
  int16 :filter_keytrack # -63 aparece como -200 no teclado
  int16 :filter_drive # ?
end
