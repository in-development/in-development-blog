module Post.New.Messages exposing (..)


import Http


import Post.Models exposing (Post)

type Msg
  = SavePost Post
  | AddPostSucceed Post
  | AddPostFail Http.Error
  | SetAuthor String
  | SetText String
