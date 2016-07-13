module Posts.Show.Update exposing (..)


import Routing.Utils exposing (reverse, navigationCmd)
import Routing.Models exposing (..)


import Posts.Show.Messages exposing (..)
import Posts.Show.Models exposing (Post)


import Posts.Commands exposing (getPost)


update : Msg -> Post -> (Post, Cmd Msg)
update msg model =
  case msg of
    ShowPost postId ->
      let
        path =
          reverse (PostRoute postId)

      in
        ( model, Cmd.batch [getPost postId, navigationCmd path] )

    FetchPostSucceed post ->
      ( model, Cmd.none )

    FetchPostFail _ ->
      (model, Cmd.none)