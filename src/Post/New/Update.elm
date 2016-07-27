module Post.New.Update exposing (..)


import Post.New.Messages exposing (..)
import Post.Models exposing (Post)
import Post.New.Commands exposing (addPost)


update : Msg -> Post -> (Post, Cmd Msg)
update msg model =
  case msg of
    SavePost post ->
      (model, (addPost post))
    AddPostSucceed post ->
      (post, Cmd.none)
    AddPostFail _ ->
      (model, Cmd.none)
