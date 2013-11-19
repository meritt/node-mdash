# mdash

A Node.JS wrapper for the [mdash.ru API](http://mdash.ru).

## How to use with JavaScript

```javascript
var mdash = require('mdash');

var text = '"Эдиториум.ру" - сайт, созданный по материалам сборника.';

mdash.apply(text, function(error, data) {
  if (error) {
    throw new Error(error);
  }

  console.log(data);
});
```

## Or with CoffeeScript

```coffeescript
mdash = require 'mdash'

text = '"Эдиториум.ру" - сайт, созданный по материалам сборника.'

mdash.apply text, (error, data) ->
  throw new Error error if error

  console.log data
```

---

## Install with NPM

	npm install mdash

## API

* apply (text, callback)

---

## Author

* [Alexey Simonenko](mailto:alexey@simonenko.su), [simonenko.su](http://simonenko.su)

## License

The MIT License, see the included `license.md` file.