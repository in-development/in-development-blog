module Header.Update exposing (..)


import Header.Messages exposing (..)

import Navigation

update : Msg -> Cmd Msg
update msg =
  case msg of
    ShowPosts ->
      Navigation.newUrl ("#/")

    ShowAdmin ->
      Navigation.newUrl ("#/admin")
