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

  # offset 50
  int16 :offset_50_1
  int16 :offset_50_2
  int16 :offset_50_3
  int16 :offset_50_4
  int16 :offset_50_5
  int16 :offset_50_6
  int16 :offset_50_7
  int16 :offset_50_8

  string :offset_60, length: 16
  string :offset_70, length: 16

  # -------------------
  # Unison
  # Offset 80
  int16 :poly_mono
  int16 :offset_80_1

  int16 :unison
  int16 :unison_detune
  int16 :unison_spread
  int16 :unison_x
  string :filler_80_3, length: 4


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
  int16 :osc1_mod
  int16 :osc1_unknow1
  int16 :osc1_level
  int16 :osc1_unknow2
  int16 :osc1_semitones
  int16 :osc1_finetune

  string :offset_b0, length: 8
  # -------------------------------
  # Start OSC 2
  int16 :osc2_wave
  int16 :osc2_shape
  int16 :osc2_mod
  int16 :osc2_unknow1
  int16 :osc2_level
  int16 :osc2_unknow2
  int16 :osc2_semitones
  int16 :osc2_finetune
  string :offset_c0, length: 8

  # ------------------------------------
  # Start OSC 3
  int16 :osc3_wave
  int16 :osc3_shape
  int16 :osc3_mod_type
  int16 :osc3_unknow1
  int16 :osc3_level
  int16 :osc3_unknow2
  int16 :osc3_semitones
  int16 :osc3_finetune

  string :offset_e0_1, length: 8
  int16 :noise_type
  # 1 = HPF

  int16 :noise_color
  int16 :noise_level
  int16 :noise_unknow

  # Offset F0
  string :offset_f0, length: 8
  int16 :filter_type
  int16 :filter_cutoff
  int16 :filter_resonance
  int16 :filter_keytrack # -63 aparece como -200 no teclado
  # ---------

  # Offset 100
  int16 :filter_drive #?
  string :offset_100, length: 6
  int16 :offset_100_2
  int16 :offset_100_3
  int16 :offset_100_4
  int16 :offset_100_5

  string :offset_110, length: 8
  int16 :aeg_attack
  int16 :aeg_decay
  int16 :aeg_sustain
  int16 :aeg_release

  # offset 120
  int16 :offset_120_1
  int16 :aeg_velocity
  string :offset_120, length: 12
  

  # offset 130
  int16 :offset_130_1
  int16 :offset_130_2
  int16 :offset_130_3
  int16 :offset_130_4
  string :offset_130, length: 8
 
  # offset 140
  int16 :offset_140_1
  int16 :offset_140_2
  int16 :offset_140_3
  int16 :offset_140_4
  int16 :offset_140_5
  int16 :offset_140_6
  int16 :offset_140_7
  int16 :offset_140_8
  #string :offset_140, length: 16

  # Offset 150
  string :offset_150, length: 8
  
  int16 :patch1_connected
  int16 :patch1_src1
  int16 :patch1_src2
  int16 :patch1_dst3
  # offset 160
  int16 :patch1_intensity
  string :filler_160, length: 6
  
  int16 :patch2_connected
  int16 :patch2_src1
  int16 :patch2_src2
  int16 :patch2_dst3
  # offset 170
  int16 :patch2_intensity
  string :offset_170_1, length: 6
  
  int16 :patch3_connected
  int16 :patch3_src1
  int16 :patch3_src2
  int16 :patch3_dst3
  # offset 180
  int16 :patch3_intensity
  string :offset_180_1, length: 6

  int16 :patch4_connected
  int16 :patch4_src1
  int16 :patch4_src2
  int16 :patch4_dst

  # offset 190
  int16 :patch4_intensity
  string :offset_190_1, length: 6

  int16 :patch5_connected
  int16 :patch5_src1
  int16 :patch5_src2
  int16 :patch5_dst

  # offset 1a0
  int16 :patch5_intensity
  string :offset_1a0_1, length: 6
 
  int16 :patch6_connected
  int16 :patch6_src1
  int16 :patch6_src2
  int16 :patch6_dst

  # offset 1b0
  int16 :patch6_intensity
  string :offset_1b0_1, length: 6
  string :offset_1b0_2, length: 8

  string :offset_1c0, length: 16
  string :offset_1d0, length: 16
  string :offset_1e0, length: 16
 
  # offset 1f0
  string :offset_1f0_1, length: 8
  string :offset_1f0_2, length: 8

  string :offset_200, length: 16
  string :offset_210, length: 16
  string :offset_220, length: 16
  string :offset_230, length: 16
  string :offset_240, length: 16
  string :offset_250, length: 16
  string :offset_260, length: 16
  string :offset_270, length: 16

  # offset 280
  string :offset_280_1, length: 8
  string :offset_280_2, length: 8
  
  string :offset_290, length: 16
  string :offset_2a0, length: 16
  string :offset_2b0, length: 16
  string :offset_2c0, length: 16
  string :offset_2d0, length: 16
  string :offset_2e0, length: 16
  string :offset_2f0, length: 16

  # offset 300
  int16 :offset_300_1
  string :offset_300_2, length: 6

  string :offset_300_3, length: 8

  string :offset_310, length: 16
  string :offset_320, length: 16

  string :offset_330, length: 8
  int16 :tempo
  int16 :arpegiator_on
  int16 :offset_330_1
  int16 :offset_330_2

  # offset 340
  int16 :offset_340_1
  string :offset_340, length: 14

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


  # offset 470
  int16 :offset_470_1
  string :offset_470_2, length: 6
  string :offset_470_3, length: 8

  string :offset_480, length: 16
  string :offset_490, length: 16
  string :offset_4a0, length: 16
  
  # offset 4b0
  int16 :offset_4b0_1
  int16 :offset_4b0_2
  int16 :offset_4b0_3
  int16 :offset_4b0_4
  int16 :offset_4b0_5
  int16 :offset_4b0_6
  int16 :offset_4b0_7
  int16 :offset_4b0_8

  string :offset_4c0, length: 16
  string :offset_4d0, length: 16
  string :offset_4e0, length: 16
  string :offset_4f0, length: 16

  string :offset_500, length: 16
  string :offset_510, length: 16
  string :offset_520, length: 16
  string :offset_530, length: 12
  #string :checksum, length: 4
  uint32 :checksum




=begin
  # Configurações de Filtros
  uint8  :filter_type
  uint8  :filter_cutoff
  uint8  :filter_resonance

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
      #{osc1}
      #{osc2}
      #{osc3}
      #{noise}
      #{amp_eg}
    INFO
=begin
    ID: #{patch_id}, Categoria: #{category}
    Filtro: Tipo #{filter_type}, Cutoff #{filter_cutoff}, Res #{filter_resonance}
    Envelope Pitch: A #{pitch_attack}, D #{pitch_decay}, S #{pitch_sustain}, R #{pitch_release}
    LFO1: Rate #{lfo1_rate}, Depth #{lfo1_depth}
    LFO2: Rate #{lfo2_rate}, Depth #{lfo2_depth}
    Intensidade Máxima: #{max_intensity}
    INFO
=end
  end

  def osc1
    <<~TXT
      OSC1:
        wave: #{osc1_wave}
        level: #{osc1_level}
        shape: #{osc1_shape}
        mod: #{osc1_mod}
        semitones: #{osc1_semitones}
        finetune: #{osc1_finetune}
    TXT
  end

  def osc2
    <<~TXT
      OSC2:
        wave: #{osc2_wave}
        level: #{osc2_level}
        shape: #{osc2_shape}
        mod: #{osc2_mod}
        semitones: #{osc2_semitones}
        finetune: #{osc2_finetune}
    TXT
  end

  def osc3
    <<~TXT
      OSC3:
        wave: #{osc3_wave}
        level: #{osc3_level}
        shape: #{osc3_shape}
        mod: #{osc3_mod_type}
        semitones: #{osc3_semitones}
        finetune #{osc3_finetune}
    TXT
  end

  def noise
    <<~TXT
      Noise:
        type: #{noise_type}
        color: #{noise_color}
        level: #{noise_level}
    TXT
  end

  def amp_eg
    <<~TXT
      Amp EG:
        Attk: #{aeg_attack}
        Dec: #{aeg_decay}
        Sust: #{aeg_sustain}
        Rel: #{aeg_release}
    TXT
  end

  def patch
  end
end


