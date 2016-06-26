module Navigation.Update exposing (..)


import Routing.Utils exposing (reverse, navigationCmd)
import Routing.Models exposing (..)


import Navigation.Messages exposing (..)


update : Msg -> Cmd Msg
update msg =
  case msg of
    ShowPosts ->
      let
        path =
          reverse PostsRoute
      in
        navigationCmd path 

    ShowAdmin ->
      let
        path =
          reverse AdminRoute
      in
        navigationCmd path