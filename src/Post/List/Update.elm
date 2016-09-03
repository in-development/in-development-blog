module Post.List.Update exposing (..)


import Post.List.Messages exposing (..)
import Post.Commands exposing (getPosts)
import Post.List.Models exposing (Posts)
import Post.Show.Update
import Post.Show.Models exposing (initialPost)



update : Msg -> Posts -> (Posts, Cmd Msg)
update msg model =
  case msg of
    GetPosts ->
      (model, getPosts)

    FetchPostsSucceed posts ->
      (posts, Cmd.none)

    FetchPostsFail _ ->
      (model, Cmd.none)

    PostMessagesMsg subMsg ->
      let
        ( _, msg ) =
          Post.Show.Update.update subMsg initialPost
      in
        ( model, Cmd.map PostMessagesMsg msg )
