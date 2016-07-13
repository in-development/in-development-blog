module Posts.Show.Messages exposing (..)


import Http


import Posts.Show.Models exposing (Post)


type Msg
  = ShowPost Int
  | FetchPostSucceed Post
  | FetchPostFail Http.Error