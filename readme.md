# mdash

[![NPM version](https://badge.fury.io/js/mdash.png)](http://badge.fury.io/js/mdash) [![Dependency Status](https://david-dm.org/meritt/node-mdash.png)](https://david-dm.org/meritt/node-mdash)

A Node.JS wrapper for the [mdash.ru API](http://mdash.ru).

## Installation

```
$ npm install mdash
```

## Examples

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

```coffeescript
mdash = require 'mdash'

text = '"Эдиториум.ру" - сайт, созданный по материалам сборника.'

mdash.apply text, (error, data) ->
  throw new Error error if error

  console.log data
```

## API

* apply (text, callback)

## Author

* [Alexey Simonenko](mailto:alexey@simonenko.su), [simonenko.su](http://simonenko.su)

## License

The MIT License, see the included `license.md` file.
