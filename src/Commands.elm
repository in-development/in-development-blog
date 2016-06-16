module Commands exposing (..)


import Models exposing (..)
import Actions exposing (..)


import Http
import Json.Decode as Json exposing ((:=))
import Task


getPosts : Cmd Msg
getPosts =
  let
    url =
      "https://in-development.firebaseio.com/posts.json"
  in
    Http.get (Json.list decodePost) url
    |> Task.perform FetchPostsFail FetchPostsSucceed


decodePost : Json.Decoder Post
decodePost =
  Json.object2
    Post
    ("author" := Json.string)
    ("text" := Json.string)