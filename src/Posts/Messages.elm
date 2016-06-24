module Posts.Messages exposing (..)


import Http


import Posts.Models exposing (..)


type Msg
  = GetPosts
  | FetchPostsSucceed (Posts)
  | FetchPostsFail Http.Error