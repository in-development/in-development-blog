module Update exposing (..)


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