require_relative "oscilator"

class OscilatorExpanded < Oscilator
  int16 :noise_kbd_osc1
  string :filler_osc1, length: 6
end
