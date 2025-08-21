class Patch < BinData::Record
  endian :little

  int16 :connected
  int16 :src1
  int16 :src2
  int16 :dst
  int16 :intensity

  string :filler, length: 6

  def src_name(id)
    %w{
      NoAssign
      Velocity
      KbdTrack
      PitchBend
      ModW
      FilterEG
      AmpEG
      LFO1
      LFO2
      Noise
      Analog
    }[id]
  end

  def dst_name(id)
    %w[
      NoAssign
      UnisonDetune
      UnisonSpread

      Timbre_PTime
      Timbre_Pitch
      Timbre_Level
      Timbre_Pan

      OSC1_Shape
      OSC1_OSC_Mod
      OSC1_Pitch
      OSC1_Level

      OSC2_Shape
      OSC2_OSC_Mod
      OSC2_Pitch
      OSC2_Level

      OSC3_Shape
      OSC3_Pitch
      OSC3_Level

      Noise_Color
      Noise_Level

      Filter_Type
      Filter_Cutoff
      Filter_Reso
      Filter_Drive

      AmpEG_Attack
      AmpEG_Decay
      AmpEG_Sustain
      AmpEG_Release
      AmpEG_Dcy&Rls

      FilterEG_Attack
      FilterEG_Decay
      FilterEG_Sustain
      FilterEG_Release
      FilterEG_Dcy&Rls
      FilterEG_Int

      LFO1_Freq
      LFO1_Smooth
      LFO2_Freq
      LFO2_Delay

      Arp_Swing
      Arp_Reso
      Arp_Type
      Arp_Octave
      Arp_Gate
      Arp_Steps

      Vocoder_Mic
      Vocoder_Synth
      Vocoder_Formant
      Vocoder_Reso
      Vocoder_Sens

      H.Tune_Int
      H.Tune_Speed
      H.Tune_Formant

      Harmony_HarmoLvl
      Harmony_Stereo
      Harmony_Formant
      Harmony_Detune
      Harmony_Delay
      Harmony_Pitch1
      Harmony_Pitch2

      Mod_Param1
      Mod_Param2
      Mod_Param3

      Delay_Param1
      Delay_Param2
      Delay_Param3
      Delay_Param4

      Reverb_Param1
      Reverb_Param2
      Reverb_Param3
      Reverb_Param4

      Eq_LowFreq
      Eq_LowGain
      Eq_HighFreq
      Eq_HighGain
      Eq_Feedback
    ][id]
  end

  def to_s
    <<~MARKDOWN
      | --- | --- |
      | src1 | #{src_name(src1)} |
      | src2 | #{src_name(src2)} |
      | dst | #{dst_name(dst)} |
      | intensity | #{intensity} |
      | connected | #{connected} |
    MARKDOWN
  end
end
