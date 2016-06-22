module Routing.Config exposing (..)


import Hop.Types exposing (Config)


import Routing.Models exposing (..)
import Routing.Matchers exposing (matchers)


routerConfig : Config Route
routerConfig =
    { basePath = ""
    , hash = False
    , matchers = matchers
    , notFound = NotFoundRoute
    }