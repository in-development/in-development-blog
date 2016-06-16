import Html.App as Html


import Models exposing (..)
import Actions exposing (..)
import Update exposing (..)
import View exposing (..)
import Commands exposing (..)
import Subscriptions exposing (..)


init : (AppModel, Cmd Msg)
init =
  (initialAppModel, getPosts)


main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }