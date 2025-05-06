require 'bindata'

class Microkorg::Program < BinData::Record
  endian :big

  # Cabeçalho
  string :header, length: 8
  uint16 :patch_id
  uint16 :category
  uint8  :unknown1
  uint8  :unknown2
  string :name, length: 16

  # Reservado / Padding
  array  :reserved, type: :uint8, initial_length: 12

  # Configurações de Osciladores
  uint8  :osc1_wave
  uint8  :osc1_mod
  uint8  :osc2_wave
  uint8  :osc2_mod

  # Configurações de Filtros
  uint8  :filter_type
  uint8  :filter_cutoff
  uint8  :filter_resonance

  # Envelope de Amplitude
  uint8  :amp_attack
  uint8  :amp_decay
  uint8  :amp_sustain
  uint8  :amp_release

  # Envelope de Pitch
  uint8  :pitch_attack
  uint8  :pitch_decay
  uint8  :pitch_sustain
  uint8  :pitch_release

  # Modulação
  uint8  :lfo1_rate
  uint8  :lfo1_depth
  uint8  :lfo2_rate
  uint8  :lfo2_depth

  # Intensidade máxima
  uint8  :max_intensity

  # Outros parâmetros identificados
  array  :additional_parameters, type: :uint8, initial_length: 100

  def to_s
    <<~INFO
    MicroKorg2 Patch - Nome: #{name.strip}
    ID: #{patch_id}, Categoria: #{category}
    OSC1: Wave #{osc1_wave}, Mod #{osc1_mod}
    OSC2: Wave #{osc2_wave}, Mod #{osc2_mod}
    Filtro: Tipo #{filter_type}, Cutoff #{filter_cutoff}, Res #{filter_resonance}
    Envelope Amplitude: A #{amp_attack}, D #{amp_decay}, S #{amp_sustain}, R #{amp_release}
    Envelope Pitch: A #{pitch_attack}, D #{pitch_decay}, S #{pitch_sustain}, R #{pitch_release}
    LFO1: Rate #{lfo1_rate}, Depth #{lfo1_depth}
    LFO2: Rate #{lfo2_rate}, Depth #{lfo2_depth}
    Intensidade Máxima: #{max_intensity}
    INFO
  end
end

