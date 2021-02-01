class BakerJob < ApplicationJob
  queue_as :default

  def perform(cookies_id)
    sleep(60)
    cookies = Cookie.where(id: cookies_id)
    cookies&.update_all(status: 'cooked')
    ActionCable.server.broadcast 'cookiestatus_channel', status: '(Your Cookie(s) is Ready)', id: cookies.first.storage_id
  end
end
