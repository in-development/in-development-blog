module Posts.Show.Update exposing (..)


import Routing.Utils exposing (reverse, navigationCmd)
import Routing.Models exposing (..)


import Posts.Show.Messages exposing (..)
import Posts.Show.Models exposing (Post)


update : Msg -> Post -> (Post, Cmd Msg)
update msg model =
  case msg of
    ShowPost post ->
      let
        path =
          reverse (PostRoute post.id)

      in
        ( model, navigationCmd path )