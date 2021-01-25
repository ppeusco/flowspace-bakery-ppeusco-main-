module CookiesHelper
  def cookie_fillings_message(cookie)
    cookie.fillings.present? ? @oven.cookie.fillings : 'no fillings'
  end
end
