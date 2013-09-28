require 'artoo/drivers/driver'

module Artoo
  module Drivers
    # Hmc6352 digital compass driver behaviors for i2c
    class Hmc6352Compass < Driver
      attr_reader :heading

      def address; 0x42; end

      def initialize(params={})
        @heading = 0.0
        super
      end

      def start_driver
        begin
          connection.i2c_start(address)

          every(interval) do
            connection.i2c_write("A")
            new_value = connection.i2c_read(2)
            
            update(new_value) if !new_value.nil?
          end

          super
        rescue Exception => e
          Logger.error "Error starting HMC6352 driver!"
          Logger.error e.message
          Logger.error e.backtrace.inspect
        end
      end

      def update(value)
        @heading = parse(value)
        publish(event_topic_name("update"), "heading", @heading)
        publish(event_topic_name("heading"), @heading)
      end

      protected

      def parse(value)
        value
      end
    end
  end
end
