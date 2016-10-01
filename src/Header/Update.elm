module Header.Update exposing (..)


import Navigation


import Header.Messages exposing (..)


update : Msg -> Cmd Msg
update msg =
  case msg of
    ShowPosts ->
      Navigation.newUrl ("#/")

    ShowAdmin ->
      Navigation.newUrl ("#/admin")
