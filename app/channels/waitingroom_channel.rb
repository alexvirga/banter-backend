class WaitingroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "waitingroom_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
