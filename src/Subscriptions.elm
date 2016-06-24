module Subscriptions exposing (..)


import Models exposing (AppModel)
import Messages exposing (Msg)


subscriptions : AppModel -> Sub Msg
subscriptions model =
  Sub.none