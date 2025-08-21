class Knob < BinData::Record
  endian :little

  int16 :knob_dest
  int16 :unknow1
  int16 :unknow2

  def dest_name(id)
    %w[
      NoAssign
      Timbre1_UnisonDetune
      Timbre1_UnisonSpread
      Timbre1_PortaTime
      Timbre1_Trans
      Timbre1_FineTune
      Timbre1_Level
      Timbre1_Pan

      Timbre1_OSC1_Wave
      Timbre1_OSC1_Shape
      Timbre1_OSC1_OSCMod
      Timbre1_OSC1_Semitone
      Timbre1_OSC1_Finetune
      Timbre1_OSC1_Level

      Timbre1_OSC2_Wave
      Timbre1_OSC2_Shape
      Timbre1_OSC2_OSCMod
      Timbre1_OSC2_Semitone
      Timbre1_OSC2_Finetune
      Timbre1_OSC2_Level

      Timbre1_OSC3_Wave
      Timbre1_OSC3_Shape
      Timbre1_OSC3_Semitone
      Timbre1_OSC3_Finetune
      Timbre1_OSC3_Level

      Timbre1_NoiseType
      Timbre1_NoiseColor
      Timbre1_NoiseLevel

      Timbre1_FilterType
      Timbre1_FilterCutoff
      Timbre1_FilterReso
      Timbre1_FilterDrive
      Timbre1_FilterKeytrack

      Timbre1_AmpEG_Attack
      Timbre1_AmpEG_Decay
      Timbre1_AmpEG_Sustain
      Timbre1_AmpEG_Release
      Timbre1_AmpEG_VeloSens

      Timbre1_FilterEG_Attack
      Timbre1_FilterEG_Decay
      Timbre1_FilterEG_Sustain
      Timbre1_FilterEG_Release
      Timbre1_FilterEG_Int

      Timbre1_LFO1_Freq
      Timbre1_LFO1_Smooth

      Timbre1_LFO2_Freq
      Timbre1_LFO2_Delay

      Timbre1_Patch1_Int
      Timbre1_Patch2_Int
      Timbre1_Patch3_Int
      Timbre1_Patch4_Int
      Timbre1_Patch5_Int
      Timbre1_Patch6_Int

      Timbre2_Unison_Detune
      Timbre2_Unison_Spread
      Timbre2_Porta_Time
      Timbre2_Trans
      Timbre2_FineTune
      Timbre2_Level
      Timbre2_Pan

      Timbre2_OSC1_Wave
      Timbre2_OSC1_Shape
      Timbre2_OSC1_OSC_Mod
      Timbre2_OSC1_Semitone
      Timbre2_OSC1_Finetune
      Timbre2_OSC1_Level

      Timbre2_OSC2_Wave
      Timbre2_OSC2_Shape
      Timbre2_OSC2_OSC_Mod
      Timbre2_OSC2_Semitone
      Timbre2_OSC2_Finetune
      Timbre2_OSC2_Level

      Timbre2_OSC3_Wave
      Timbre2_OSC3_Shape
      Timbre2_OSC3_Semitone
      Timbre2_OSC3_Finetune
      Timbre2_OSC3_Level

      Timbre2_Noise_Type
      Timbre2_Noise_Color
      Timbre2_Noise_Level

      Timbre2_Filter_Type
      Timbre2_Filter_Cutoff
      Timbre2_Filter_Reso
      Timbre2_Filter_Drive
      Timbre2_Filter_Keytrack

      Timbre2_AmpEG_Attack
      Timbre2_AmpEG_Decay
      Timbre2_AmpEG_Sustain
      Timbre2_AmpEG_Release
      Timbre2_AmpEG_VeloSens

      Timbre2_FilterEG_Attack
      Timbre2_FilterEG_Decay
      Timbre2_FilterEG_Sustain
      Timbre2_FilterEG_Release
      Timbre2_FilterEG_Int

      Timbre2_LFO1_Freq
      Timbre2_LFO1_Smooth
      Timbre2_LFO2_Freq
      Timbre2_LFO2_Delay

      Timbre2_Patch1_Int
      Timbre2_Patch2_Int
      Timbre2_Patch3_Int
      Timbre2_Patch4_Int
      Timbre2_Patch5_Int
      Timbre2_Patch6_Int

      Tempo
      ArpSwing
      ArpReso
      ArpType
      ArpOctave
      ArpGate
      ArpStep

      Vocal_Vocoder_Direct
      Vocal_Vocoder_Synth
      Vocal_Vocoder_Formant
      Vocal_Vocoder_Reso
      Vocal_Vocoder_Sens

      Vocal_Hardtune_Int
      Vocal_Hardtune_Speed
      Vocal_Hardtune_Formant

      Vocal_Harmo_Level
      Vocal_Harmo_Stereo
      Vocal_Harmo_Formant
      Vocal_Harmo_Detune
      Vocal_Harmo_Delay
      Vocal_Harmo_Pitch1
      Vocal_Harmo_Pitch2

      Effect_Mod_Param1
      Effect_Mod_Param2
      Effect_Mod_Param3

      Effect_Delay_Param1
      Effect_Delay_Param2
      Effect_Delay_Param3
      Effect_Delay_Param4

      Effect_Reverb_Param1
      Effect_Reverb_Param2
      Effect_Reverb_Param3
      Effect_Reverb_Param4

      LoopRec_Stutter
      LoopRec_Stutter_Length
      LoopRec_Stutter_Offset
    ][id]
  end

  def to_s
    dest_name(knob_dest)
  end
end

