module Routing.Utils exposing (..)


import Hop exposing (matchUrl, makeUrl, matcherToPath)
import Navigation

import Routing.Models exposing (..)
import Routing.Config exposing (routerConfig)


urlParser : Navigation.Parser ( Route, Location )
urlParser =
    Navigation.makeParser (.href >> matchUrl routerConfig)
