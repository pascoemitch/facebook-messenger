module Facebook
  module Messenger
    module Incoming
      # The PolicyEnforcement class represents an incoming webhook response from
      # Facebook when they are notifying your app of a policy violation
      #
      # https://developers.facebook.com/docs/messenger-platform/reference/webhook-events/messaging_policy_enforcement
      class TakeThreadControl
        include Facebook::Messenger::Incoming::Common
      end
    end
  end
end
