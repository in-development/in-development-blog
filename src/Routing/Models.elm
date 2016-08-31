module Routing.Models exposing (..)


type Route
    = PostsRoute
    | AdminRoute
    | PostRoute Int
    | NewPostRoute
    | NotFoundRoute
