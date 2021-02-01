url = window.location.href
id = url.slice(url.length - 1, url.length)
console.log(id)

App.cookiestatus = App.cable.subscriptions.create { channel: "CookiestatusChannel", id: id },
  connected: ->
    console.log("Connected to the Cookiestatus channel!");

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
   console.log(data)
   $('.oven_status').html data['status']
