module Messages exposing (..)


import Http


import Posts.Models exposing (Posts)
import Posts.Messages as PostsMessages


import Navigation.Messages as NavigationMessages


type Msg
  = NoOp
  | PostsMessagesMsg PostsMessages.Msg
  | NavigationMessagesMsg NavigationMessages.Msg
  | ShowPost Int
