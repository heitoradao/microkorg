require 'bindata'

class Microkorg::Program < BinData::Record
  endian :little

  # Offset 00
  # Cabeçalho
  string :header, length: 8
  int16 :offset_00_5
  int16 :offset_00_6
  int16 :offset_00_7
  int16 :offset_00_8
  #string :filler_00, length: 8

  # Offset 10
  string :filler_10_1, length: 4
  string :name, length: 20
  int16 :timbre_mode_a
  int16 :octave_shift
  string :filler2, length: 4

  # Offset 30
  string :filler_30_1, length: 4
  int16 :genre
  int16 :offset_30_2
  int16 :offset_30_3
  int16 :knob1_assign
  int16 :offset_30_5
  int16 :offset_30_6

  #string :offset_40, length: 16
  # offset 40
  int16 :offset_40_1
  int16 :knob2_assign
  int16 :offset_40_3
  int16 :offset_40_4
  int16 :offset_40_5
  int16 :knob3_assign
  int16 :offset_40_7
  int16 :offset_40_8

  # offset 50
  int16 :offset_50_1
  int16 :knob4_assign
  int16 :offset_50_3
  int16 :offset_50_4
  int16 :offset_50_5
  int16 :knob5_assign
  int16 :offset_50_7
  int16 :offset_50_8

  string :offset_60, length: 16

  # offset 70
  int16 :offset_70_1
  int16 :offset_70_2
  int16 :offset_70_3
  int16 :offset_70_4
  int16 :timbre1_level
  int16 :timble1_pan
  int16 :offset_70_7
  int16 :offset_70_8

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

  # offset 90
  int16 :t1_porta_time
  int16 :t1_porta_mode
  int16 :t1_transpose
  int16 :t1_finetune
  int16 :t1_pb_range
  string :offset_90, length: 6

  # ----------------------------------
  # Start OSC 1
  # Offset a0
  int16 :t1_osc1_wave
  int16 :t1_osc1_shape
  int16 :t1_osc1_mod
  int16 :t1_osc1_sample
  int16 :t1_osc1_level
  int16 :t1_osc1_unknow2
  int16 :t1_osc1_semitones
  int16 :t1_osc1_finetune

  string :t1_offset_b0, length: 8
  # -------------------------------
  # Start OSC 2
  int16 :t1_osc2_wave
  int16 :t1_osc2_shape
  int16 :t1_osc2_mod
  int16 :t1_osc2_sample
  int16 :t1_osc2_level
  int16 :t1_osc2_unknow2
  int16 :t1_osc2_semitones
  int16 :t1_osc2_finetune

  string :t1_offset_c0, length: 8

  # ------------------------------------
  # Start OSC 3
  int16 :t1_osc3_wave
  int16 :t1_osc3_shape
  int16 :t1_osc3_mod_type
  int16 :t1_osc3_sample
  int16 :t1_osc3_level
  int16 :t1_osc3_unknow2
  int16 :t1_osc3_semitones
  int16 :t1_osc3_finetune

  # offset e0
  string :offset_e0_1, length: 8
  int16 :t1_noise_type
  int16 :t1_noise_color
  int16 :t1_noise_level
  int16 :t1_noise_unknow

  # Offset F0
  string :offset_f0, length: 8
  int16 :t1_filter_type
  int16 :t1_filter_cutoff
  int16 :t1_filter_resonance
  int16 :t1_filter_keytrack # -63 aparece como -200 no teclado
  # ---------

  # Offset 100
  int16 :t1_filter_drive #?
  string :t1_offset_100, length: 6
  int16 :t1_offset_100_2
  int16 :t1_offset_100_3
  int16 :t1_offset_100_4
  int16 :t1_offset_100_5

  # offset 110
  int16 :offset_110_1
  int16 :offset_110_2
  string :offset_110, length: 4
  int16 :t1_aeg_attack
  int16 :t1_aeg_decay
  int16 :t1_aeg_sustain
  int16 :t1_aeg_release

  # offset 120
  int16 :offset_120_1
  int16 :t1_aeg_velocity
  string :offset_120, length: 12


  # offset 130
  string :offset_130, length: 16

  # offset 140
  string :offset_140, length: 16

  ###########
  # Patches
  ###########

  # Offset 150
  string :offset_150, length: 8
  int16 :t1_patch1_connected
  int16 :t1_patch1_src1
  int16 :t1_patch1_src2
  int16 :t1_patch1_dst3

  # offset 160
  int16 :t1_patch1_intensity
  string :filler_160, length: 6
  int16 :t1_patch2_connected
  int16 :t1_patch2_src1
  int16 :t1_patch2_src2
  int16 :t1_patch2_dst3

  # offset 170
  int16 :t1_patch2_intensity
  string :offset_170_1, length: 6
  int16 :t1_patch3_connected
  int16 :t1_patch3_src1
  int16 :t1_patch3_src2
  int16 :t1_patch3_dst3

  # offset 180
  int16 :t1_patch3_intensity
  string :offset_180_1, length: 6
  int16 :t1_patch4_connected
  int16 :t1_patch4_src1
  int16 :t1_patch4_src2
  int16 :t1_patch4_dst

  # offset 190
  int16 :t1_patch4_intensity
  string :offset_190_1, length: 6
  int16 :t1_patch5_connected
  int16 :t1_patch5_src1
  int16 :t1_patch5_src2
  int16 :t1_patch5_dst

  # offset 1a0
  int16 :t1_patch5_intensity
  string :offset_1a0_1, length: 6
  int16 :t1_patch6_connected
  int16 :t1_patch6_src1
  int16 :t1_patch6_src2
  int16 :t1_patch6_dst

  # offset 1b0
  int16 :t1_patch6_intensity
  string :offset_1b0_1, length: 6
  string :offset_1b0_2, length: 8

  string :offset_1c0, length: 16



  #############
  # Timbre 2
  #############


  # offset 1d0
  int16 :offset_1d0_1
  int16 :offset_1d0_2
  int16 :offset_1d0_3
  int16 :offset_1d0_4
  int16 :t2_level
  int16 :t2_pan
  int16 :offset_1d0_7
  int16 :offset_1d0_8

  string :offset_1e0, length: 16

  # offset 1f0
  int16 :t2_porta_time
  int16 :t2_porta_mode
  int16 :t2_transpose
  int16 :t2_finetune
  int16 :t2_pb_range
  string :offset_1f0, length: 6

  # offset 200
  # OSC 1
  int16 :t2_osc1_wave
  int16 :t2_osc1_shape
  int16 :t2_osc1_mod
  int16 :t2_osc1_sample
  int16 :t2_osc1_level
  int16 :t2_osc1_unknow2
  int16 :t2_osc1_semitones
  int16 :t2_osc1_finetune

  # offset 210
  int16 :t2_osc2_wave
  int16 :t2_osc2_shape
  int16 :t2_osc2_mod
  int16 :t2_osc2_sample
  int16 :t2_osc2_level
  int16 :t2_osc2_unknow2
  int16 :t2_osc2_semitones
  int16 :t2_osc2_finetune

  # offset 220
  int16 :t2_osc3_wave
  int16 :t2_osc3_shape
  int16 :t2_osc3_mod_type
  int16 :t2_osc3_sample
  int16 :t2_osc3_level
  int16 :t2_osc3_unknow2
  int16 :t2_osc3_semitones
  int16 :t2_osc3_finetune


  # offset 230
  string :offset_230_1, length: 8
  int16 :t2_noise_type
  int16 :t2_noise_color
  int16 :t2_noise_level
  int16 :t2_noise_unknow

  # offset 240
  string :offset_240, length: 8
  int16 :t2_filter_type
  int16 :t2_filter_cutoff
  int16 :t2_filter_resonance
  int16 :t2_filter_keytrack

  # offset 250
  int16 :t2_filter_drive
  string :offset_250_1, length: 6
  string :offset_250, length: 8

  # offset 260
  string :offset_260, length: 8
  int16 :t2_aeg_attack
  int16 :t2_aeg_decay
  int16 :t2_aeg_sustain
  int16 :t2_aeg_release

  # offset 270
  int16 :offset_270_1
  int16 :t2_aeg_velocity
  string :offset_270, length: 12

  # offset 280
  string :offset_280_1, length: 8
  string :offset_280_2, length: 8

  string :offset_290, length: 16


  ###########
  # Patches
  ###########

  # offset 2a0
  string :offset_2a0, length: 8
  int16 :t2_patch1_connected
  int16 :t2_patch1_src1
  int16 :t2_patch1_src2
  int16 :t2_patch1_dst3


  #string :offset_2b0, length: 16
  int16 :t2_patch1_intensity
  string :filler_2b0, length: 6
  int16 :t2_patch2_connected
  int16 :t2_patch2_src1
  int16 :t2_patch2_src2
  int16 :t2_patch2_dst3


  #string :offset_2c0, length: 16
  int16 :t2_patch2_intensity
  string :filler_2c0, length: 6
  int16 :t2_patch3_connected
  int16 :t2_patch3_src1
  int16 :t2_patch3_src2
  int16 :t2_patch3_dst3

  #string :offset_2d0, length: 16
  int16 :t2_patch3_intensity
  string :filler_2d0, length: 6
  int16 :t2_patch4_connected
  int16 :t2_patch4_src1
  int16 :t2_patch4_src2
  int16 :t2_patch4_dst3

  #string :offset_2e0, length: 16
  int16 :t2_patch4_intensity
  string :filler_2e0, length: 6
  int16 :t2_patch5_connected
  int16 :t2_patch5_src1
  int16 :t2_patch5_src2
  int16 :t2_patch5_dst3

  #string :offset_2f0, length: 16
  int16 :t2_patch5_intensity
  string :filler_2f0, length: 6
  int16 :t2_patch6_connected
  int16 :t2_patch6_src1
  int16 :t2_patch6_src2
  int16 :t2_patch6_dst3

  # offset 300
  int16 :t2_patch6_intensity
  string :offset_300_2, length: 6
  string :offset_300_3, length: 8

  string :offset_310, length: 16
  string :offset_320, length: 16

  # offset 330
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
  
  # offset 450
  #string :offset_450, length: 16
  int16 :offset_450_1
  int16 :offset_450_2
  int16 :offset_450_3
  int16 :offset_450_4
  int16 :offset_450_5
  int16 :offset_450_6
  int16 :mod_on
  int16 :mod_type

  # offset 460
  int16 :offset_460_1
  int16 :offset_460_2
  int16 :offset_460_3
  int16 :offset_460_4
  int16 :offset_460_5
  int16 :offset_460_6 # mod_sub_type
  int16 :mod_speed
  int16 :mod_detpth
  #string :offset_460, length: 16


  # offset 470
  int16 :offset_470_1
  int16 :offset_470_2
  int16 :offset_470_3
  int16 :offset_470_4
  int16 :offset_470_5
  int16 :offset_470_6
  int16 :offset_470_7
  int16 :offset_470_8
  #string :offset_470_2, length: 6
  #string :offset_470_3, length: 8

  string :offset_480, length: 16
  string :offset_490, length: 16

  # offset 4a0
  string :offset_4a0, length: 12
  int16 :offset_4a0_7
  int16 :offset_4a0_8

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
  string :offset_4d0, length: 12
  int16 :reverb_on
  int16 :reverb_type

  string :offset_4e0, length: 16
  string :offset_4f0, length: 16

  string :offset_500, length: 16
  string :offset_510, length: 16
  string :offset_520, length: 16
  string :offset_530, length: 12
  #string :checksum, length: 4
  uint32 :checksum




  def to_s
    <<~INFO
      MicroKorg2 Patch - Nome: #{name.strip}
      tempo: #{tempo}
      #{t1_osc1}
      #{t1_osc2}
      #{t1_osc3}
      #{t1_noise}
      #{t1_amp_eg}
    INFO
  end

  def t1_osc1
    <<~TXT
      OSC1:
        wave: #{t1_osc1_wave}
        level: #{t1_osc1_level}
        shape: #{t1_osc1_shape}
        mod: #{t1_osc1_mod}
        semitones: #{t1_osc1_semitones}
        finetune: #{t1_osc1_finetune}
    TXT
  end

  def t1_osc2
    <<~TXT
      OSC2:
        wave: #{t1_osc2_wave}
        level: #{t1_osc2_level}
        shape: #{t1_osc2_shape}
        mod: #{t1_osc2_mod}
        semitones: #{t1_osc2_semitones}
        finetune: #{t1_osc2_finetune}
    TXT
  end

  def t1_osc3
    <<~TXT
      OSC3:
        wave: #{t1_osc3_wave}
        level: #{t1_osc3_level}
        shape: #{t1_osc3_shape}
        mod: #{t1_osc3_mod_type}
        semitones: #{t1_osc3_semitones}
        finetune #{t1_osc3_finetune}
    TXT
  end

  def t1_noise
    <<~TXT
      Noise:
        type: #{t1_noise_type}
        color: #{t1_noise_color}
        level: #{t1_noise_level}
    TXT
  end

  def t1_amp_eg
    <<~TXT
      Amp EG:
        Attk: #{t1_aeg_attack}
        Dec: #{t1_aeg_decay}
        Sust: #{t1_aeg_sustain}
        Rel: #{t1_aeg_release}
        velocity: #{t1_aeg_velocity}
    TXT
  end

  def t1_patch1
    <<~TXT
      Patch1:
        SRC1: #{t1_patch1_src1}
        SRC2: #{t1_patch1_src2}
        DST: #{t1_patch1_dst}
        Intensity: #{t1_patch1_intensity}
        Connected: #{t1_patch1_connected == 1 ? 'ON' : 'Off'}
    TXT
  end
end


