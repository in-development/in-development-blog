module Header.Update exposing (..)


import Header.Messages exposing (..)


import Navigation.Update


update : Msg -> Cmd Msg
update msg =
  case msg of
    NavigationMessagesMsg subMsg ->
      let
        msg =
          Navigation.Update.update subMsg

      in
        Cmd.map NavigationMessagesMsg msg
