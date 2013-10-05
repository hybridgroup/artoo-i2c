require 'artoo'

#connection :arduino, :adaptor => :firmata, :port => '/dev/ttyACM0'
connection :digispark, :adaptor => :littlewire, :vendor => 0x1781, :product => 0x0c9f
device :compass, :driver => :hmc_6352_compass, :connection => :arduino, :interval => 0.5

work do
  on compass, :heading => proc { |caller, data| puts "heading: #{data}"}
end
