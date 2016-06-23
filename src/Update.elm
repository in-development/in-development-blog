module Update exposing (..)


import Routing.Models exposing (..)
import Routing.Config exposing (routerConfig)
import Routing.Utils exposing (reverse, navigationCmd)


import Actions exposing (..)
import Commands exposing (..)
import Models exposing (AppModel)


update : Msg -> AppModel -> (AppModel, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

    GetPosts ->
      (model, getPosts)

    FetchPostsSucceed posts ->
      ( { model | posts = posts }
      , Cmd.none
      )

    FetchPostsFail _ ->
      (model, Cmd.none)

    ShowPosts ->
      let
        path =
          reverse PostsRoute
      in
        ( model, navigationCmd path )

    ShowAdmin ->
      let
        path =
          reverse AdminRoute
      in
        ( model, navigationCmd path )