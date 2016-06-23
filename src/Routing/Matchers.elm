module Routing.Matchers exposing (..)

import Hop.Types exposing (PathMatcher)
import Hop.Matchers exposing (match1)


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