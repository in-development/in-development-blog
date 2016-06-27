module Routing.Models exposing (..)


import Hop.Types exposing (Location)


type Route
    = PostsRoute
    | AdminRoute
    | PostRoute Int
    | NotFoundRoute


type alias Location = Hop.Types.Location