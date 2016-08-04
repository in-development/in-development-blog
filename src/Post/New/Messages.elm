module Post.New.Messages exposing (..)


import Http


import Post.Models exposing (Posts, Post)

type Msg
  = SavePost Posts Post
  | AddPostSucceed Posts 
  | AddPostFail Http.Error
  | SetAuthor String
  | SetText String
