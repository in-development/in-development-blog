module Posts.Update exposing (..)


import Routing.Utils exposing (reverse, navigationCmd)
import Routing.Models exposing (..)


import Posts.Messages exposing (..)
import Posts.Commands exposing (getPosts, getPost)
import Posts.Models exposing (Posts, Post)


update : Msg -> Posts -> (Posts, Cmd Msg)
update msg model =
  case msg of
    GetPosts ->
      (model, getPosts)

    FetchPostsSucceed posts ->
      (posts, Cmd.none)

    FetchPostsFail _ ->
      (model, Cmd.none)

    ShowPost postId ->
      let
        path =
          reverse (PostRoute postId)

      in
        ( model, Cmd.batch [getPost postId, navigationCmd path] )

    FetchPostSucceed post ->
      ( model, Cmd.none )