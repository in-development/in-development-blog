module Header.Messages exposing (..)


import Navigation.Messages as NavigationMessages


type Msg
  = NoOp
  | NavigationMessagesMsg NavigationMessages.Msg
