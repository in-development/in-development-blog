import Navigation

import Routing.Models exposing (..)
import Routing.Parser exposing (urlParser)

import Models exposing (..)
import Messages exposing (..)
import Update exposing (..)
import View exposing (..)
import Subscriptions exposing (..)

import Post.Commands exposing (getPosts)


urlUpdate : Route -> AppModel -> ( AppModel, Cmd Msg )
urlUpdate route model =
  ({ model | route = route }, Cmd.none)


init : Route -> ( AppModel, Cmd Msg )
init route =
  ( newAppModel route, Cmd.map PostsMessagesMsg getPosts )


main : Program Never
main =
  Navigation.program urlParser
    { init = init
    , view = view
    , update = update
    , urlUpdate = urlUpdate
    , subscriptions = subscriptions
    }
