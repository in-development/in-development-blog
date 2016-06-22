module Routing.Models exposing (..)


import Hop.Types exposing (Location)


type Route
    = PostsRoute
    | AdminRoute
    | NotFoundRoute


type alias Location = Hop.Types.Location