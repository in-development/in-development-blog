module Post.New.Update exposing (..)


import Post.New.Messages exposing (..)
import Post.Models exposing (Post)
import Post.New.Commands exposing (addPost)


update : Msg -> Post -> (Post, Cmd Msg)
update msg model =
  case msg of
    SavePost posts post ->
      (model, (addPost posts post))
    AddPostSucceed posts ->
      {--((List.head posts), Cmd.none)--}
      (model, Cmd.none)
    AddPostFail _ ->
      (model, Cmd.none)
    SetAuthor name ->
      let
        updatedModel =
          { model | author = name }
      in
        (updatedModel, Cmd.none)
    SetText text ->
      let
        updatedModel =
          { model | text = text }
      in
        (updatedModel, Cmd.none)
