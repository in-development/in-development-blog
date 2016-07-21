module Post.Commands exposing (..)


import Post.Show.Models exposing (Post)
import Post.List.Messages exposing (..)


import Http
import Json.Decode as Json exposing ((:=))
import Task


getPosts : Cmd Post.List.Messages.Msg
getPosts =
  let
    url =
      "https://in-development-3.firebaseio.com/blog/posts.json"
  in
    Http.get (Json.list decodePost) url
    |> Task.perform FetchPostsFail FetchPostsSucceed


decodePost : Json.Decoder Post
decodePost =
  Json.object3
    Post
    ("id" := Json.int)
    ("author" := Json.string)
    ("text" := Json.string)