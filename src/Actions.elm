module Actions exposing (..)


import Http


import Models exposing (..)


type Msg
  = NoOp
  | GetPosts
  | FetchPostsSucceed (Posts)
  | FetchPostsFail Http.Error
  | ShowPosts
  | ShowAdmin