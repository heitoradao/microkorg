require 'bindata'

class Microkorg::Program < BinData::Record
  endian :little

  # Offset 00
  # Cabeçalho
  string :header, length: 8
  string :filler_00, length: 8

  # Offset 10
  string :filler_10_1, length: 4
  string :name, length: 20
  uint8 :timbre_mode_a
  string :filler1, length: 3
  string :filler2, length: 4

  # Offset 30
  string :filler_30_1, length: 4
  uint8 :timbre_mode_b
  string :filler_30_2, length: 5
  uint8 :unknow_30_1
  string :filler_30_3, length: 5

  string :offset_40, length: 16
  string :offset_50, length: 16
  string :offset_60, length: 16
  string :offset_70, length: 16
  string :offset_80, length: 16
  string :offset_90, length: 16
  
  # Offset a0
  uint8 :osc1_type
  # 0 = saw
  # 1 = square

  string :filler_a0, length: 15

  string :offset_b0, length: 16
  string :offset_c0, length: 16
  string :offset_d0, length: 16
  string :offset_e0, length: 16
  
  string :offset_f0, length: 12
  uint8 :resonance
  string :filler_f0, length: 3

  string :offset_100, length: 16
  
  # string :offset_110, length: 16
  string :offset_110, length: 8
  uint8 :aeg_attk
  string :filler_110_1, length: 5
  uint8 :aeg_rel
  string :filler_110_2, length: 1

  string :offset_120, length: 16
  string :offset_130, length: 16
  string :offset_140, length: 16
  string :offset_150, length: 16
  string :offset_160, length: 16
  string :offset_170, length: 16
  string :offset_180, length: 16
  string :offset_190, length: 16
  string :offset_1a0, length: 16
  string :offset_1b0, length: 16
  string :offset_1c0, length: 16
  string :offset_1d0, length: 16
  string :offset_1e0, length: 16
  string :offset_1f0, length: 16

  string :offset_200, length: 16
  string :offset_210, length: 16
  string :offset_220, length: 16
  string :offset_230, length: 16
  string :offset_240, length: 16
  string :offset_250, length: 16
  string :offset_260, length: 16
  string :offset_270, length: 16
  string :offset_280, length: 16
  string :offset_290, length: 16
  string :offset_2a0, length: 16
  string :offset_2b0, length: 16
  string :offset_2c0, length: 16
  string :offset_2d0, length: 16
  string :offset_2e0, length: 16
  string :offset_2f0, length: 16

  string :offset_300, length: 16
  string :offset_310, length: 16
  string :offset_320, length: 16
  
  string :offset_330, length: 8
  uint8 :tempo
  string :filler_330_1, length: 7

  string :offset_340, length: 16
  string :offset_350, length: 16
  string :offset_360, length: 16
  string :offset_370, length: 16
  string :offset_380, length: 16
  string :offset_390, length: 16
  string :offset_3a0, length: 16
  string :offset_3b0, length: 16
  string :offset_3c0, length: 16
  string :offset_3d0, length: 16
  string :offset_3e0, length: 16
  string :offset_3f0, length: 16

  string :offset_400, length: 16
  string :offset_410, length: 16
  string :offset_420, length: 16
  string :offset_430, length: 16
  string :offset_440, length: 16
  string :offset_450, length: 16
  string :offset_460, length: 16
  string :offset_470, length: 16
  string :offset_480, length: 16
  string :offset_490, length: 16
  string :offset_4a0, length: 16
  string :offset_4b0, length: 16
  string :offset_4c0, length: 16
  string :offset_4d0, length: 16
  string :offset_4e0, length: 16
  string :offset_4f0, length: 16

  string :offset_500, length: 16
  string :offset_510, length: 16
  string :offset_520, length: 16
  #string :offset_530, length: 16




=begin
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
=end

  def to_s
    <<~INFO
      MicroKorg2 Patch - Nome: #{name.strip}
    INFO
=begin
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
=end
  end
end


