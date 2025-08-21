require_relative "envelope"

class Filter < BinData::Record
  endian :little

  int16 :filter_type
  int16 :cutoff
  int16 :resonance
  int16 :keytrack # -63 aparece como -200 no teclado
  int16 :drive # ?

  string :filler1, length: 6

  envelope :eg
  int16 :intensity
  
  int16 :offset_110_2
  string :filler2, length: 4
end
