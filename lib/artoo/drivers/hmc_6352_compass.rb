require 'artoo/drivers/driver'

module Artoo
  module Drivers
    # Hmc6352 digital compass driver behaviors for i2c
    class Hmc6352Compass < Driver
      COMMANDS = [:heading].freeze
      
      attr_reader :heading

      def address; 0x42; end

      def initialize(params={})
        @heading = 0.0
        super
      end

      def start_driver
        begin
          connection.i2c_start(address >> 1)
          connection.i2c_write("A".bytes.first)

          every(interval) do
            connection.i2c_write("A".bytes.first)
            new_value = connection.i2c_read(2)
            update(new_value) unless new_value.nil? || new_value.empty?
          end

          super
        rescue Exception => e
          Logger.error "Error starting HMC6352 driver!"
          Logger.error e.message
          Logger.error e.backtrace.inspect
        end
      end

      def update(val)
        puts val.inspect
        return if val.nil? || val == "bad byte"
        @heading = parse(val)
        publish(event_topic_name("update"), "heading", heading)
        publish(event_topic_name("heading"), heading)
      end

      protected

      def parse(val=[0, 0])
        (val[1] + val[0] * 256) / 10.0
      end
    end
  end
end
