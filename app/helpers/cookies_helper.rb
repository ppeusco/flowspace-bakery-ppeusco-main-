module CookiesHelper
  def cookie_fillings_message(cookie)
    cookie.fillings.present? ? cookie.fillings : 'no fillings'
  end
end
