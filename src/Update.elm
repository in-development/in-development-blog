module Update exposing (..)


import Routing.Models exposing (..)
import Routing.Config exposing (routerConfig)
import Routing.Utils exposing (reverse, navigationCmd)


import Messages exposing (..)
import Models exposing (AppModel)


import Post.List.Update
import Post.Show.Update
import Post.New.Update
import Post.Models exposing (initialPost)


import Navigation.Update


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
      in
        ( { model | newPost = updatedNewPost }, Cmd.map NewPostMessagesMsg msg )

    NavigationMessagesMsg subMsg ->
      let
        msg =
          Navigation.Update.update subMsg

      in
        ( model, Cmd.map NavigationMessagesMsg msg )
