require "bindata"
require_relative "oscilator"
require_relative "oscilator_expanded"
require_relative "patch"
require_relative "envelope"
require_relative "lfo"
require_relative "hardtune"
require_relative "vocoder"
require_relative "noise"
require_relative "arpegiator"
require_relative "harmonizer"

class Microkorg::Program < BinData::Record
  endian :little

  # Offset 00
  # Header
  string :header, length: 8
  int16 :offset_00_5
  int16 :offset_00_6
  int16 :offset_00_7
  int16 :offset_00_8
  # string :filler_00, length: 8

  # Offset 10
  # string :filler_10_1, length: 4
  int16 :offset_10_1
  int16 :offset_10_2

  string :name, length: 20, trim_padding: true

  int16 :timbre_mode_a
  int16 :octave_shift, initial_value: 0
  string :filler2, length: 4

  # Offset 30
  string :filler_30_1, length: 4
  int16 :genre
  int16 :offset_30_5
  int16 :offset_30_6
  int16 :knob1_assign
  int16 :offset_30_7
  int16 :offset_30_8

  # string :offset_40, length: 16
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
  int16 :t1_level
  int16 :t1_pan
  int16 :offset_70_7
  int16 :offset_70_8

  # -------------------
  # Unison
  # Offset 80
  int16 :poly_mono
  int16 :offset_80_1
  int16 :unison_voices # if voices > 0, sum 1
  int16 :unison_detune
  int16 :unison_spread
  int16 :unison_x # if osc3 node type is disabled, this is affected (0)
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
  array :t1_osc, type: :oscilator_expanded, initial_length: 3
  # oscilator_expanded :t1_osc1
  # oscilator_expanded :t1_osc2
  # oscilator_expanded :t1_osc3

  # offset e0
  noise :t1_noise
  # int16 :t1_noise_type
  # int16 :t1_noise_color
  # int16 :t1_noise_level
  # int16 :t1_noise_unknow

  # Offset F0
  string :offset_f0, length: 8
  int16 :t1_filter_type
  int16 :t1_filter_cutoff
  int16 :t1_filter_resonance
  int16 :t1_filter_keytrack # -63 aparece como -200 no teclado
  # ---------

  # Offset 100
  int16 :t1_filter_drive # ?
  string :t1_offset_100, length: 6

  envelope :t1_filter_eg

  # offset 110
  int16 :t1_filter_intensity
  int16 :offset_110_2
  string :offset_110, length: 4

  envelope :t1_amp_eg

  # offset 120
  int16 :offset_120_1
  int16 :t1_aeg_velocity
  string :offset_120, length: 4

  lfo :t1_lfo1

  # offset 130
  string :offset_130, length: 8

  # offset 140
  lfo :t1_lfo2

  ###########
  # Patches
  ###########

  # Offset 150
  string :offset_150, length: 8

  array :t1_patch, type: :patch, initial_length: 6

  # offset 1b0
  # string :offset_1b0_1, length: 6
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

  # string :offset_1e0, length: 16
  int16 :offset_1e0_1
  int16 :offset_1e0_2
  int16 :offset_1e0_3
  int16 :offset_1e0_4
  int16 :offset_1e0_5
  int16 :offset_1e0_6
  int16 :offset_1e0_7
  int16 :offset_1e0_8

  # offset 1f0
  int16 :t2_porta_time
  int16 :t2_porta_mode
  int16 :t2_transpose
  int16 :t2_finetune
  int16 :t2_pb_range
  string :offset_1f0, length: 6

  # offset 200
  array :t2_osc, type: :oscilator, initial_length: 3
  # oscilator :t2_osc1

  # offset 210
  # oscilator :t2_osc2

  # offset 220
  # oscilator :t2_osc3

  # offset 230
  string :offset_230_1, length: 8
  noise :t2_noise
  # int16 :t2_noise_type
  # int16 :t2_noise_color
  # int16 :t2_noise_level
  # int16 :t2_noise_unknow

  # offset 240
  string :offset_240, length: 8
  int16 :t2_filter_type
  int16 :t2_filter_cutoff
  int16 :t2_filter_resonance
  int16 :t2_filter_keytrack

  # offset 250
  int16 :t2_filter_drive
  string :offset_250_1, length: 6

  envelope :t2_filter_eg

  # offset 260
  int16 :t2_filter_intensity
  string :offset_260, length: 6

  envelope :t2_amp_eg

  # offset 270
  int16 :offset_270_1
  int16 :t2_aeg_velocity
  string :offset_270, length: 4

  lfo :t2_lfo1
  # offset 280
  
  string :offset_280_2, length: 8

  # offset 290
  int16 :offset_290_1
  int16 :offset_290_2
  int16 :offset_290_3
  int16 :offset_290_4
  string :offset_290, length: 8

  ###########
  # Patches
  ###########

  # offset 2a0
  # string :offset_2a0, length: 8
  int16 :offset_2a0_1
  int16 :offset_2a0_2
  int16 :offset_2a0_3
  int16 :offset_2a0_4

  array :t2_patch, type: :patch, initial_length: 6
=begin
  patch :t2_patch1
  patch :t2_patch2
  patch :t2_patch3
  patch :t2_patch4
  patch :t2_patch5
  patch :t2_patch6
=end

  # offset 300
  int16 :offset_300_5
  string :offset_300_3, length: 6

  # offset 310
  int16 :offset_310_1
  string :offset_310, length: 14
  string :offset_320, length: 16

  # offset 330
  string :offset_330, length: 8
  int16 :tempo, initial_value: 120
  


  arpegiator :arpegiator


  # string :offset_360, length: 16
  int16 :offset_360_5
  int16 :offset_360_6
  int16 :offset_360_7
  int16 :offset_360_8

  # offset 370
  string :offset_370, length: 8
  vocoder :vocoder

  # offset 380
  # array :band_level, type: :int16, initial_length: 16
  # offset 390
  # offset 3a0

  # array :band_pan, type: :int16, initial_length: 16

  # offset 3b0
  # offset 3c0
  int16 :offset_3c0_5
  int16 :offset_3c0_6
  int16 :offset_3c0_7
  int16 :offset_3c0_8
  # string :offset_3c0, length: 16

  string :offset_3d0, length: 16

  # string :offset_3e0, length: 16
  int16 :offset_3e0_1
  int16 :offset_3e0_2
  int16 :offset_3e0_3
  int16 :offset_3e0_4

  hardtune :hardtune
  # int16 :hardtune_on
  # int16 :hardtune_intensity
  # int16 :hardtune_speed
  # int16 :hardtune_formant

  # offset 3f0
  # string :offset_3f0, length: 16
  int16 :offset_3f0_1
  int16 :offset_3f0_2
  int16 :offset_3f0_3
  int16 :offset_3f0_4
  
  harmonizer :harmonizer
  # string :offset_400, length: 16
  int16 :offset_400_4
  int16 :offset_400_5
  int16 :offset_400_6
  int16 :offset_400_7
  int16 :offset_400_8

  string :offset_410, length: 16
  # string :offset_420, length: 16
  int16 :offset_420_1
  int16 :offset_420_2
  int16 :offset_420_3
  int16 :offset_420_4
  int16 :offset_420_5
  int16 :offset_420_6
  int16 :offset_420_7
  int16 :offset_420_8

  # string :offset_430, length: 16
  int16 :offset_430_1
  int16 :offset_430_2
  int16 :offset_430_3
  int16 :offset_430_4
  int16 :offset_430_5
  int16 :offset_430_6
  int16 :offset_430_7 # harmonizer pitch ?
  int16 :offset_430_8

  # string :offset_440, length: 16
  int16 :offset_440_1
  int16 :offset_440_2
  int16 :offset_440_3
  int16 :offset_440_4
  int16 :offset_440_5
  int16 :offset_440_6
  int16 :offset_440_7
  int16 :offset_440_8

  # string :offset_450, length: 16
  int16 :offset_450_1
  int16 :offset_450_2
  int16 :offset_450_3
  int16 :offset_450_4
  int16 :offset_450_5
  int16 :offset_450_6
  int16 :mod_on
  int16 :mod_type

  # offset 460
  # string :offset_460, length: 16
  int16 :offset_460_1
  int16 :offset_460_2
  int16 :offset_460_3
  int16 :offset_460_4
  int16 :offset_460_5
  int16 :offset_460_6 # mod_sub_type
  int16 :mod_speed
  int16 :mod_detpth

  # offset 470
  int16 :offset_470_1
  int16 :mod_low_cut
  int16 :mod_manual
  int16 :mod_width
  int16 :offset_470_5
  int16 :mod_dry_wet
  int16 :offset_470_7
  int16 :offset_470_8
  # string :offset_470_2, length: 6
  # string :offset_470_3, length: 8

  string :offset_480, length: 16

  # offset 490
  # string :offset_490, length: 16
  int16 :offset_490_1
  int16 :offset_490_2
  int16 :offset_490_3
  int16 :offset_490_4
  int16 :offset_490_5
  int16 :offset_490_6
  int16 :delay_on
  int16 :delay_type

  # offset 4a0
  string :offset_4a0, length: 12
  int16 :delay_width
  int16 :delay_time

  # offset 4b0
  int16 :delay_depth
  int16 :delay_low_cut
  int16 :offset_4b0_3
  int16 :delay_offset
  int16 :delay_feedback, initial_value: 64
  int16 :delay_dry_wet, initial_value: 50
  int16 :offset_4b0_7
  int16 :offset_4b0_8

  string :offset_4c0, length: 16
  string :offset_4d0, length: 12
  int16 :reverb_on
  int16 :reverb_type

  # offset 4e0
  string :offset_4e0, length: 12
  int16 :offset_4e0_7
  int16 :reverb_time

  # offset 4f0
  # string :offset_4f0, length: 16
  int16 :reverb_depth
  int16 :reverb_damp
  int16 :reverb_pre_delay
  int16 :reverb_width
  int16 :reverb_size, initial_value: 127
  int16 :reverb_dry_wet, initial_value: 50
  int16 :offset_4f0_7
  int16 :offset_4f0_8

  string :offset_500, length: 16
  string :offset_510, length: 16

  # offset 520
  int16 :offset_520_1
  string :offset_520, length: 10
  int16 :eq_on
  int16 :offset_520_8_low_freq # eq_low_freq ?

  # offset 530
  int16 :offset_530_high_freq # eq_high_freq ?
  int16 :eq_low_gain
  int16 :eq_high_gain
  int16 :eq_feedback
  string :offset_530, length: 4
  # string :checksum, length: 4
  uint32 :checksum

  def to_s
    <<~INFO
      MicroKorg2 Patch - Nome: #{name.strip}
      tempo: #{tempo}
    INFO
  end
end
