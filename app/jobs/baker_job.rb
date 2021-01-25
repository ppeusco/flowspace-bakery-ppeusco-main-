class BakerJob < ApplicationJob
  queue_as :default

  def perform(cookie_id)
    sleep(120)
    cookie = Cookie.find_by(id: cookie_id)
    cookie&.update(status: 'cooked')
  end
end
