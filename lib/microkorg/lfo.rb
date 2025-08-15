class LFO < BinData::Record
  endian :little

  int16 :wave
  int16 :mode
  int16 :freq
  int16 :tempo
  int16 :key_sync

  int16 :unknow2

  int16 :delay
  int16 :smooth
end
