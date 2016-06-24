module Posts.Update exposing (..)


import Posts.Messages exposing (..)
import Posts.Commands exposing (getPosts)
import Posts.Models exposing (Posts)


update : Msg -> Posts -> (Posts, Cmd Msg)
update msg model =
  case msg of
    GetPosts ->
      (model, getPosts)

    FetchPostsSucceed posts ->
      (posts, Cmd.none)

    FetchPostsFail _ ->
      (model, Cmd.none)