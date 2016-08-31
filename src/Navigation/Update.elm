module Navigation.Update exposing (..)

import Navigation

import Navigation.Messages exposing (..)


update : Msg -> Cmd Msg
update msg =
  case msg of
    ShowPosts ->
      Navigation.newUrl ("#/")

    ShowAdmin ->
      Navigation.newUrl ("#/admin")
