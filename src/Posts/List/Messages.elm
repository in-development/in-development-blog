module Posts.List.Messages exposing (..)


import Http


import Posts.Models exposing (..)


import Posts.List.Models exposing (..)


type Msg
  = GetPosts
  | FetchPostsSucceed (Posts)
  | FetchPostsFail Http.Error
  | ShowPost Int
  | FetchPostSucceed Post