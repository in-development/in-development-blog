module Posts.List.Messages exposing (..)


import Http


import Posts.Show.Models exposing (Post)


import Posts.List.Models exposing (Posts)


type Msg
  = GetPosts
  | FetchPostsSucceed (Posts)
  | FetchPostsFail Http.Error
  | ShowPost Int
  | FetchPostSucceed Post