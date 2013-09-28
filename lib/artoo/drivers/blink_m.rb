require 'artoo/drivers/driver'

module Artoo
  module Drivers
    # BlinkM LED driver behaviors for i2c
    class BlinkM < Driver
      COMMANDS = [:rgb, :fade].freeze

      def address; 0x09; end

      def start_driver
        begin
          connection.i2c_start(address)
          connection.i2c_write("o".bytes.first) # stops any scripts already running

          super
        rescue Exception => e
          Logger.error "Error starting BlinkM driver!"
          Logger.error e.message
          Logger.error e.backtrace.inspect
        end
      end

      def rgb(r=0, g=0, b=0)
        connection.i2c_write("n".bytes.first)
        connection.i2c_write(r, g, b)
      end

      def fade(r=0, g=0, b=0)
        connection.i2c_write("c".bytes.first)
        connection.i2c_write(r, g, b)
      end
    end
  end
end
