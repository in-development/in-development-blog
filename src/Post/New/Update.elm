module Post.New.Update exposing (..)


import Post.New.Messages exposing (..)
import Post.Models exposing (Post)
import Post.New.Commands exposing (addPost)


import Routing.Utils exposing (reverse, navigationCmd)
import Routing.Models exposing (..)


import Post.Commands exposing (getPosts)


update : Msg -> Post -> (Post, Cmd Msg)
update msg model =
  case msg of
    SavePost posts post ->
      (model, (addPost posts post))
    AddPostSucceed posts ->
      let
        path =
          reverse PostsRoute

        navCmd =
          navigationCmd path
      in  
        (model, navCmd)
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
