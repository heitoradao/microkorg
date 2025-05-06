require 'bindata'

class Microkorg::Program < BinData::Record
  endian :big

  string :header, length: 8
  uint16 :patch_id
  uint16 :category
  uint8  :unknown1
  uint8  :unknown2
  string :name, length: 16
  array  :reserved, type: :uint8, initial_length: 12
  array  :parameters, type: :uint8, initial_length: 128
  
  def to_s
    "MicroKorg2 Patch - Nome: #{name.strip}, ID: #{patch_id}, Categoria: #{category}"
  end
end

