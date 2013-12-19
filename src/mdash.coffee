xhr = require 'request'

request = (host, params, fn = ->) ->
  xhr.post host, form: params, (error, request, body) ->
    try
      body  = JSON.parse body
      error = body.status if body.status?
      data  = if body.result? then body.result else null
    catch error
      data = null
      error = "Unable to parse JSON response from #{host}"

    fn error, data

    return
  return

module.exports =
  endpoint: 'http://mdash.ru/api.v1.php'

  apply: (text, fn) ->
    params = text: text

    request @endpoint, params, fn
    return