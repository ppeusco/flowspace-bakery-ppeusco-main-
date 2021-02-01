class CookiestatusChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'cookiestatus_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
