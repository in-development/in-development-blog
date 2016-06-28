module Commands exposing (..)


import Messages exposing (..)
import Posts.Models exposing (Post)


import Http
import Json.Decode as Json exposing ((:=))
import Task


getPost : Int -> Cmd Messages.Msg
getPost id =
  let
    url =
      "https://in-development.firebaseio.com/posts/" ++ (toString id) ++ ".json"
  in
    Http.get decodePost url
    |> Task.perform FetchPostFail FetchPostSucceed


decodePost : Json.Decoder Post
decodePost =
  Json.object3
    Post
    ("id" := Json.int)
    ("author" := Json.string)
    ("text" := Json.string)