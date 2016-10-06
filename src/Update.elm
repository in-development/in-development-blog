module Update exposing (..)


import Messages exposing (..)
import Models exposing (AppModel)


import Post.List.Update
import Post.Show.Update
import Post.New.Messages as PostNewMessages
import Post.New.Update
import Post.Models exposing (initialPost)


import Header.Update


update : Msg -> AppModel -> (AppModel, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

    PostsMessagesMsg subMsg ->
      let
        ( updatedPosts, msg ) =
          Post.List.Update.update subMsg model.posts
      in
        ( { model | posts = updatedPosts }, Cmd.map PostsMessagesMsg msg )

    PostMessagesMsg subMsg ->
      let
        ( _, msg ) =
          Post.Show.Update.update subMsg initialPost
      in
        ( model, Cmd.map PostMessagesMsg msg )

    NewPostMessagesMsg subMsg ->
      let
        (updatedNewPost, msg) =
          Post.New.Update.update subMsg model.newPost

        updatedPosts =
          case subMsg of
            PostNewMessages.AddPostSucceed newPosts -> newPosts
            otherwise -> model.posts
      in
        ( { model | newPost = updatedNewPost, posts = updatedPosts }, Cmd.map NewPostMessagesMsg msg )


    HeaderMessagesMsg subMsg ->
      let
        msg =
          Header.Update.update subMsg

      in
        ( model, Cmd.map HeaderMessagesMsg msg )
