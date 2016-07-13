module Posts.List.Messages exposing (..)


import Http


import Posts.List.Models exposing (Posts)


import Posts.Show.Messages as PostMessages


type Msg
  = GetPosts
  | FetchPostsSucceed (Posts)
  | FetchPostsFail Http.Error
  | PostMessagesMsg PostMessages.Msg