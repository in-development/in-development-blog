module Header.Update exposing (..)


import Header.Messages exposing (..)


update : Msg -> Cmd Msg
update msg =
  case msg of
    NoOp ->
     Cmd.none 
