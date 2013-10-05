require 'artoo'

#connection :firmata, :adaptor => :firmata, :port => '/dev/ttyACM0'
connection :digispark, :adaptor => :littlewire, :vendor => 0x1781, :product => 0x0c9f
device :blink_m, :driver => :blink_m

work do
  puts blink_m.color.inspect

  every 1.second do
    unless @on
      blink_m.rgb(0xff, 0xff, 0xff)
      puts blink_m.color.inspect
      @on = true
    else
      blink_m.rgb(0, 0, 0)
      puts blink_m.color.inspect
      @on = false
    end
  end
end
