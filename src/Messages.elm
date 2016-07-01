module Messages exposing (..)


import Http


import Posts.Models exposing (Posts)
import Posts.Messages as PostsMessages


type Msg
  = NoOp
  | PostsMessagesMsg PostsMessages.Msg
  | ShowPosts
  | ShowAdmin