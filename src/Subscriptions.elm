module Subscriptions exposing (..)


import Models exposing (AppModel)
import Actions exposing (Msg)


subscriptions : AppModel -> Sub Msg
subscriptions model =
  Sub.none