// Generated by CoffeeScript 1.8.0
(function() {
  var request, xhr;

  xhr = require('request');

  request = function(host, params, fn) {
    if (fn == null) {
      fn = function() {};
    }
    xhr.post(host, {
      form: params
    }, function(error, request, body) {
      var data;
      try {
        body = JSON.parse(body);
        if (body.status != null) {
          error = body.status;
        }
        data = body.result != null ? body.result : null;
      } catch (_error) {
        error = _error;
        data = null;
        error = "Unable to parse JSON response from " + host;
      }
      fn(error, data);
    });
  };

  module.exports = {
    endpoint: 'http://mdash.ru/api.v1.php',
    apply: function(text, options, fn) {
      var params;
      params = {
        text: text
      };
      if (typeof options === 'function') {
        fn = options;
        options = null;
      }
      if (options) {
        params.options = options;
      }
      request(this.endpoint, params, fn);
    }
  };

}).call(this);
