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
  int16 :timbre_mode_a
  int16 :octave_shift
  #string :filler1, length: 2
  string :filler2, length: 4

  # Offset 30
  string :filler_30_1, length: 4
  int16 :genre
  string :filler_30_2, length: 4
  int16 :unknow_30_1
  string :filler_30_3, length: 4

  string :offset_40, length: 16
  string :offset_50, length: 16
  string :offset_60, length: 16
  string :offset_70, length: 16

  # -------------------
  # Unison
  # Offset 80
  int16 :poly_mono
  string :filler_80_1, length: 2

  int16 :unison
  int16 :unison_detune
  int16 :unison_spread
  int16 :unison_x
  string :filler_80_6, length: 4


  string :offset_90, length: 16

  # ----------------------------------
  # Start OSC 1
  # Offset a0
  int16 :osc1_wave
  # 0 = saw
  # 1 = square
  # 2 = triangle
  # 3 = sine
  # 4
  # 5
  int16 :osc1_shape
  string :filler_a0_1, length: 4
  int16 :osc1_level
  string :filler_a0_2, length: 2
  int16 :osc1_semitones

  string :filler_a0_4, length: 2

  string :offset_b0, length: 8
  # -------------------------------
  # Start OSC 2
  int16 :osc2_wave
  int16 :osc2_shape
  string :offset_b0_2, length: 4
  int16 :osc2_level
  string :filler_c0, length: 2
  int16 :osc2_semitones
  string :offset_c0, length: 10

  # ------------------------------------
  # Start OSC 3
  int16 :osc3_wave
  int16 :osc3_shape
  string :offset_d0, length: 4
  int16 :osc3_level
  string :filler_d0, length: 2
  int16 :osc3_semitones
  string :filler, length: 2

  string :offset_e0_1, length: 10

  string :offset_e0_2, length: 2 # probably the noise type
  int16 :noise_level
  string :filler_e0, length: 2

  # ----------
  string :offset_f0, length: 12
  int16 :resonance
  string :filler_f0, length: 2
  # ---------

  string :offset_100, length: 16

  string :offset_110, length: 8
  int16 :aeg_attk
  int16 :aeg_decay
  int16 :aeg_sustain
  int16 :aeg_rel

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
  int16 :tempo
  string :filler_330_1, length: 6

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
  string :offset_530, length: 12
  string :checksum, length: 4




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
      tempo: #{tempo}
      OSC1:
         wave: #{osc1_wave}
         level: #{osc1_level}
         shape: #{osc1_shape}
         semitones: #{osc1_semitones}
      OSC2:
         wave: #{osc2_wave}
         level: #{osc2_level}
         shape: #{osc2_shape}
         semitones: #{osc2_semitones}
      OSC3:
         wave: #{osc3_wave}
         level: #{osc3_level}
         shape: #{osc3_shape}
         semitones: #{osc3_semitones}
      Noise:
        level: #{noise_level}
      Amp EG:
         Attk: #{aeg_attk}
         Dec: #{aeg_decay}
         Sust: #{aeg_sustain}
         Rel: #{aeg_rel}
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


