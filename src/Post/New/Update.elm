module Post.New.Update exposing (..)


import Post.New.Messages exposing (..)


update : Msg -> Cmd Msg
update msg =
  case msg of
    NoOp ->
      Cmd.none