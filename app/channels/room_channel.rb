class RoomChannel < ApplicationCable::Channel
  def subscribed  #お互いを監視している
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Message.create!(content: data['message'])
  end
end
