# mdash

[![NPM version](https://badge.fury.io/js/mdash.png)](http://badge.fury.io/js/mdash) [![Dependency Status](https://david-dm.org/meritt/node-mdash.png)](https://david-dm.org/meritt/node-mdash) [![devDependency Status](https://david-dm.org/meritt/node-mdash/dev-status.png)](https://david-dm.org/meritt/node-mdash#info=devDependencies)

A node.js wrapper for the [EMT typographer](http://mdash.ru), written by Evgeny Muravjev.

## Installation

```bash
$ npm install mdash
```

## Examples

#### JavaScript

```js
var mdash = require('mdash');

var text = 'May "the force" be with you.\n"The force" is a magical power that gives people strength. This phrase is kind of a way of saying "good luck".';

mdash.apply(text, function(error, result) {
  if (error) {
    throw new Error(error);
  }

  // result is a typographic text
  console.log(result);
});
```

#### CoffeeScript

```coffeescript
mdash = require 'mdash'

text = 'May "the force" be with you.\n"The force" is a magical power that gives people strength. This phrase is kind of a way of saying "good luck".'

mdash.apply text, (error, result) ->
  throw new Error error if error

  # result is a typographic text
  console.log result
```

## API

* endpoint=
* apply (text[, options], callback)

By default `endpoint` set to official API ([http://mdash.ru/api.v1.php](http://mdash.ru)), but it does not support typographer options or multiple texts. You can change `endpoint` to yours. For example, you can run [mdash-service](https://github.com/meritt/mdash-service) and send all request to it.

### [mdash-service](https://github.com/meritt/mdash-service) extras

API extras have different default options, can enable/disable options and accept not only text, but array and object of texts.

```js
var texts = {
  title: 'May "the force" be with you.',
  text: '"The force" is a magical power that gives people strength. This phrase is kind of a way of saying "good luck".'
};

mdash.apply(texts, function(error, result) {
  if (error) {
    throw new Error(error);
  }

  // result is an object with title and text keys
  console.log(result);
});
```

#### [EMT](http://mdash.ru/rules.html) options list:

```
Quote.quotes
Quote.quotation
Dash.to_libo_nibud
Dash.iz_za_pod
Dash.ka_de_kas
Nobr.super_nbsp
Nobr.nbsp_in_the_end
Nobr.phone_builder
Nobr.ip_address
Nobr.spaces_nobr_in_surname_abbr
Nobr.nbsp_celcius
Nobr.hyphen_nowrap_in_small_words
Nobr.hyphen_nowrap
Nobr.nowrap
Symbol.tm_replace
Symbol.r_sign_replace
Symbol.copy_replace
Symbol.apostrophe
Symbol.degree_f
Symbol.arrows_symbols
Symbol.no_inches
Punctmark.auto_comma
Punctmark.hellip
Punctmark.fix_pmarks
Punctmark.fix_excl_quest_marks
Punctmark.dot_on_end
Number.minus_between_nums
Number.minus_in_numbers_range
Number.auto_times_x
Number.simple_fraction
Number.math_chars
Number.thinsp_between_number_triads
Number.thinsp_between_no_and_number
Number.thinsp_between_sect_and_number
Date.years
Date.mdash_month_interval
Date.nbsp_and_dash_month_interval
Date.nobr_year_in_date
Space.many_spaces_to_one
Space.clear_percent
Space.clear_before_after_punct
Space.autospace_after
Space.bracket_fix
Abbr.nbsp_money_abbr
Abbr.nobr_vtch_itd_itp
Abbr.nobr_sm_im
Abbr.nobr_acronym
Abbr.nobr_locations
Abbr.nobr_abbreviation
Abbr.ps_pps
Abbr.nbsp_org_abbr
Abbr.nobr_gost
Abbr.nobr_before_unit_volt
Abbr.nbsp_before_unit
OptAlign.all
OptAlign.oa_oquote
OptAlign.oa_obracket_coma
OptAlign.layout
Text.paragraphs
Text.auto_links
Text.email
Text.breakline
Text.no_repeat_words
Etc.unicode_convert
```

You can enable or disable option like this:

```js
var options = {
  'Text.paragraphs': 'off',
  'Text.breakline': 'off',
  'Etc.unicode_convert': 'on'
};

mdash.apply(text, options, function(error, result) {
  if (error) {
    throw new Error(error);
  }

  console.log(result);
});
```

## Author

* [Alexey Simonenko](mailto:alexey@simonenko.su), [simonenko.su](http://simonenko.su)

## License

The MIT License, see the included `license.md` file.

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/meritt/node-mdash/trend.png)](https://bitdeli.com/free "Bitdeli Badge")