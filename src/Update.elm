module Update exposing (..)


import Actions exposing (..)


update msg model =
  case msg of
    NoOp ->
      model