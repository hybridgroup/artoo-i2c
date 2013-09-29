require 'artoo/drivers/driver'

module Artoo
  module Drivers
    # BlinkM LED driver behaviors for i2c
    class BlinkM < Driver
      COMMANDS = [:rgb, :fade, :color, :firmware_version].freeze

      def address; 0x09; end

      def start_driver
        begin
          connection.i2c_start(address)
          connection.i2c_write("o".bytes.first) # stops any scripts already running
          rgb(0, 0, 0)

          super
        rescue Exception => e
          Logger.error "Error starting BlinkM driver!"
          Logger.error e.message
          Logger.error e.backtrace.inspect
        end
      end

      def rgb(r=0, g=0, b=0)
        connection.i2c_write('n'.bytes.first)
        connection.i2c_write(r, g, b)
      end

      def fade(r=0, g=0, b=0)
        connection.i2c_write('c'.bytes.first)
        connection.i2c_write(r, g, b)
      end

      def firmware_version
        connection.i2c_write('Z'.bytes.first)
        @data = connection.i2c_read(2)
        return nil if @data.nil? || @data.empty?
        return "#{@data[0]}.#{@data[1]}"
      end

      def color
        connection.i2c_write('g'.bytes.first)
        @data = connection.i2c_read(3)
        return nil if @data.nil? || @data.empty?
        return @data[0], @data[1], @data[2]
      end
    end
  end
end
