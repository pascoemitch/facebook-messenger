module Facebook
  module Messenger
    module Incoming
      # The PassThreadControl class represents an incoming Facebook Messenger
      # pass thread control event.
      #
      # @see https://developers.facebook.com/docs/messenger-platform/handover-protocol/pass-thread-control
      # @see https://developers.facebook.com/docs/messenger-platform/reference/handover-protocol/pass-thread-control
      class PassThreadControl
        include Facebook::Messenger::Incoming::Common

        def initialize(pass_thread_control)
          @pass_thread_control = pass_thread_control
        end

        def all
          @messaging
        end

        def metadata
          @referral['metadata']
        end

        def sender_id
          @messaging['sender']['id']
        end

        def new_owner_app_id
          @messaging['pass_thread_control']['new_owner_app_id']
        end

        def metadata
          @messaging['pass_thread_control']['metadata']
        end

        def pass_thread_control
          @pass_thread_control ||= PassThreadControl.new(@messaging['pass_thread_control'])
        end

      end
    end
  end
end
