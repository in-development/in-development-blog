'use strict';

require('./assets/markdown.css');

// Require index.html so it gets copied to dist
require('./index.html');

var Elm = require('no-export!./Main.elm')
Elm.Main.embed(document.getElementById( 'main' ));
