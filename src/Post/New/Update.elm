module Post.New.Update exposing (..)


import Post.New.Messages exposing (..)
import Post.Models exposing (Post)
import Post.New.Commands exposing (addPost)


import Navigation


update : Msg -> Post -> (Post, Cmd Msg)
update msg model =
  case msg of
    SavePost posts post ->
      (model, (addPost posts post))

    AddPostSucceed posts ->
      let
        lastPost =
          List.head (List.reverse posts)

        newPost =
          case lastPost of
            Just new -> new
            otherwise -> model

      in
        (newPost, Navigation.newUrl "#/")

    AddPostFail error ->
      (Debug.log ("Error to add new post: " ++ toString error))
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
