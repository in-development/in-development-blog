module Posts.List.Update exposing (..)


import Routing.Utils exposing (reverse, navigationCmd)
import Routing.Models exposing (..)


import Posts.List.Messages exposing (..)


import Posts.Commands exposing (getPosts, getPost)


import Posts.List.Models exposing (Posts)


import Posts.Show.Update
import Posts.Show.Models exposing (initialPost)



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
          Posts.Show.Update.update subMsg initialPost
      in
        ( model, Cmd.map PostMessagesMsg msg )