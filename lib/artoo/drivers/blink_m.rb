require 'artoo/drivers/driver'

module Artoo
  module Drivers
    # BlinkM LED driver behaviors for i2c
    class BlinkM < Driver
      COMMANDS = [:rgb].freeze

      def address; 0x09; end

      def start_driver
        begin
          connection.i2c_start(address)
          
          super
        rescue Exception => e
          Logger.error "Error starting BlinkM driver!"
          Logger.error e.message
          Logger.error e.backtrace.inspect
        end
      end

      def rgb(r, g, b)
        connection.i2c_write("n".bytes.first)
        connection.i2c_write(r, g, b)
      end
    end
  end
end
