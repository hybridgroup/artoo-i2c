require File.expand_path(File.dirname(__FILE__) + "/../test_helper")
require 'artoo/drivers/blink_m'

describe Artoo::Drivers::BlinkM do
  before do
    @device = mock('device')
    @connection = mock('connection')
    @connection.expects(:i2c_start)
    @connection.expects(:i2c_write).with("o".bytes.first)

    @device.stubs(:connection).returns(@connection)
    @driver = Artoo::Drivers::BlinkM.new(:parent => @device)
    @driver.start_driver
  end

  it 'Artoo::Drivers::BlinkM#rgb' do
    @connection.expects(:i2c_write).with("n".bytes.first)
    @connection.expects(:i2c_write).with(5, 10, 15)
    @driver.rgb(5, 10, 15)
  end

  it 'Artoo::Drivers::BlinkM#fade' do
    @connection.expects(:i2c_write).with("c".bytes.first)
    @connection.expects(:i2c_write).with(5, 10, 15)
    @driver.fade(5, 10, 15)
  end
end
