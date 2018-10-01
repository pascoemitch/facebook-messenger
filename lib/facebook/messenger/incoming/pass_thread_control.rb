module Facebook
  module Messenger
    module Incoming
      # The PolicyEnforcement class represents an incoming webhook response from
      # Facebook when they are notifying your app of a policy violation
      #
      # https://developers.facebook.com/docs/messenger-platform/reference/webhook-events/messaging_policy_enforcement
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

        def pass_thread_control
          @pass_thread_control ||= PassThreadControl.new(@messaging['pass_thread_control'])
        end

      end
    end
  end
end
