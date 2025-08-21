class Oscilator < BinData::Record
  endian :little

  int16 :wave
  int16 :shape
  int16 :mod
  int16 :sample
  int16 :level
  int16 :unknow
  int16 :semitones
  int16 :finetune

  def wave_name(id)
    %w[
      Saw
      Square
      Triangle
      Sine
      DWGS
      OneShot
    ][id]
  end

  def dwgs_name(id)
    %w{
      SynSine1
      SynSine2
      SynSine3
      SynSine4
      SynSine5
      SynSine6
      SynSine7

      SynWave1
      SynWave2
      SynWave3
      SynWave4
      SynWave5
      SynWave6
      SynWave7
      SynWave8

      OctSaw
      OctPulse
      OctSquare
      OctPhat

      5thSaw
      5thSquare
      5thSine
      5thWide

      LoResPulse12
      LoResPulse25
      LoResSquare
      LoResTriangle

      Digi1
      Digi2
      Digi3
      Digi4
      Digi5
      Digi6
      Digi7
      Digi8

      InstEP1
      InstEP2
      InstEP3
      InstOrgan1
      InstOrgan2
      InstOrgan3
      InstClav
      InstGuitar

      Bass1
      Bass2
      Bass3
      Bass4

      Bell1
      Bell2
      Bell3
      Bell4
      Bell5

      SynVox1
      SynVox2
      SynVox3
      SynVox4
      SynVox5
      SynVox6
      SynVox7
      SynVox8

      Airy1
      Airy2
      Airy3
      Airy4
    }[id]
  end

  def one_shot_name(id)
    %w[
      ClickTight
      ClickRound
      ClickGrazing
      ClickTechy
      ClickHusky
      ClickWeak

      PercKick
      PercSlap
      PercBlack
      PercHiHat
      PercClaves
      PercGuiro

      FoleyTinCan
      FoleyLute
      FoleyRainstick
      FoleyIceDrop

      MetallicCoin
      MetallicPipe
      MetallicStick
      MetallicPlate
      MetallicMute
      MetallicBowl
      MetallicBell
      MetallicBlade

      DecayShot
      DecayBrush
      DecayFilter
      DecayMotion
      DecayZap
      DecayNotice
      DecayBlip
      DecayFall
    ][id]
  end

  def shape_name
    if wave == 4
      dwgs_name(shape)
    # elsif wave == 5
    #   one_shot_name(shape)
    else
      shape
    end
  end

  def to_s
    <<~MARKDOWN
      | --- | --- |
      | wave | #{wave_name(wave)} |
      | shape | #{shape_name} |
      | mod | #{mod} |
      | sample | #{one_shot_name(sample)} |
      | level | #{level} |
      | semitones | #{semitones} |
      | finetune | #{finetune} |
    MARKDOWN
  end
end

