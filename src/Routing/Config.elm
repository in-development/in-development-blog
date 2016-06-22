module Routing.Config exposing (..)


import Hop.Types exposing (Config, Location, Query, Router, PathMatcher, newLocation)
import Hop.Matchers exposing (..)


import Routing.Models exposing (..)


matcherPosts : PathMatcher Route
matcherPosts =
    match1 PostsRoute ""


matcherAdmin : PathMatcher Route
matcherAdmin =
    match1 AdminRoute "/admin"


matchers : List (PathMatcher Route)
matchers =
    [ matcherPosts
    , matcherAdmin
    ]


routerConfig : Config Route
routerConfig =
    { basePath = ""
    , hash = False
    , matchers = matchers
    , notFound = NotFoundRoute
    }