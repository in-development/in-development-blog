module Actions exposing (..)


import Http


import Hop.Types exposing (Location, Query)


import Models exposing (..)


type Msg
  = NoOp
  | GetPosts
  | FetchPostsSucceed (Posts)
  | FetchPostsFail Http.Error
  | SetQuery Query
  | ShowPosts
  | ShowAdmin