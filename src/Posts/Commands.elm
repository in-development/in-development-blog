module Posts.Commands exposing (..)


import Posts.Models exposing (Post)


import Posts.List.Messages exposing (..)


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


getPost : Int -> Cmd Msg
getPost id =
  let
    url =
      "https://in-development.firebaseio.com/posts/" ++ (toString id) ++ ".json"
  in
    Http.get decodePost url
    |> Task.perform FetchPostsFail FetchPostSucceed


decodePost : Json.Decoder Post
decodePost =
  Json.object3
    Post
    ("id" := Json.int)
    ("author" := Json.string)
    ("text" := Json.string)