module Messages exposing (..)


import Http


import Post.Models exposing (Post, Posts)
import Post.List.Messages as PostsMessages
import Post.Show.Messages as PostMessages
import Post.New.Messages as NewPostMessages


import Header.Messages as HeaderMessages


type Msg
  = NoOp
  | PostsMessagesMsg PostsMessages.Msg
  | PostMessagesMsg PostMessages.Msg
  | NewPostMessagesMsg NewPostMessages.Msg
  | HeaderMessagesMsg HeaderMessages.Msg
