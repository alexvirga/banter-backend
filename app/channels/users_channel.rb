class UsersChannel < ApplicationCable::Channel
  # def subscribed
  #   waitingroom = WaitingRoom.find(params[:waitingroom])
  #   stream_for waitingroom
  # end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
