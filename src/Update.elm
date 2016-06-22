module Update exposing (..)


import Navigation
import Hop exposing (makeUrl, makeUrlFromLocation, setQuery)
import Hop.Types


import Routing.Models exposing (..)
import Routing.Config exposing (routerConfig)
import Routing.Utils exposing (reverse)


import Actions exposing (..)
import Commands exposing (..)
import Models exposing (AppModel)


navigationCmd : String -> Cmd a
navigationCmd path =
  Navigation.modifyUrl (makeUrl routerConfig path)



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

    SetQuery query ->
      let
        command =
          model.location
            |> setQuery query
            |> makeUrlFromLocation routerConfig
            |> Navigation.modifyUrl
      in
        ( model, command )

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