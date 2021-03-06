'use strict';

require('./assets/markdown.css');
require('./assets/styles.css');
require('./assets/header.css');
require('./assets/footer.css');

// Require index.html so it gets copied to dist
require('./index.html');

var Elm = require('no-export!./Main.elm')
Elm.Main.embed(document.getElementById( 'main' ));
