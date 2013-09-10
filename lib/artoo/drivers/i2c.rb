require 'artoo/drivers/driver'

module Artoo
  module Drivers
    # The i2c driver behaviors
    class I2c < Driver

      # Start driver and any required connections
      def start_driver
        begin
          every(interval) do
            handle_message_events
          end

          super
        rescue Exception => e
          Logger.error "Error starting I2c driver!"
          Logger.error e.message
          Logger.error e.backtrace.inspect
        end
      end

      def handle_message_events         
      end

    end
  end
end
