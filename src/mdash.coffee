xhr = require 'request'

apihost = 'http://mdash.ru/api.{version}.php'
version = 'v1'

request = (params, fn = ->) ->
  host = apihost.replace '{version}', version

  xhr.post host, form: params, (error, request, body) ->
    try
      body  = JSON.parse body
      error = body.status if body.status?
      data  = if body.result? then body.result else null
    catch error
      data = null
      error = 'Unable to parse JSON response from mdash.ru'

    fn error, data

    return
  return

module.exports =
  apply: (text, fn) ->
    params = text: text
    request params, fn
    return