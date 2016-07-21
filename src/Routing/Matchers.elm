module Routing.Matchers exposing (..)

import Hop.Types exposing (PathMatcher)
import Hop.Matchers exposing (match1, match2, int)


import Routing.Models exposing (..)


matcherPosts : PathMatcher Route
matcherPosts =
    match1 PostsRoute ""


matcherAdmin : PathMatcher Route
matcherAdmin =
    match1 AdminRoute "/admin"


matcherPost : PathMatcher Route
matcherPost =
    match2 PostRoute "/post/" int


matcherNewPost : PathMatcher Route
matcherNewPost =
    match1 NewPostRoute "/post/new"


matchers : List (PathMatcher Route)
matchers =
    [ matcherPosts
    , matcherAdmin
    , matcherPost
    , matcherNewPost
    ]