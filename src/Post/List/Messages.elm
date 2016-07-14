module Post.List.Messages exposing (..)


import Http


import Post.List.Models exposing (Posts)


import Post.Show.Messages as PostMessages


type Msg
  = GetPosts
  | FetchPostsSucceed (Posts)
  | FetchPostsFail Http.Error
  | PostMessagesMsg PostMessages.Msg