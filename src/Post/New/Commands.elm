module Post.New.Commands exposing (..)


import Post.Show.Models exposing (Post)
import Post.New.Messages exposing (..)


import Http
import Json.Decode as Json exposing ((:=))
import Json.Encode as Encode
import Task


addPost : Post -> Cmd Post.New.Messages.Msg
addPost post =
  let
    body = 
      postEncoder post
        |> Encode.encode 0
        |> Http.string
    url =
      "https://in-development-3.firebaseio.com/blog/posts.json"
  in
    Http.post decodePost url body 
    |> Task.perform AddPostFail AddPostSucceed


decodePost : Json.Decoder Post
decodePost =
  Json.object3
    Post
    ("id" := Json.int)
    ("author" := Json.string)
    ("text" := Json.string)

postEncoder : Post -> Encode.Value
postEncoder post = 
  Encode.object
      [ ("id", Encode.int post.id)
      , ("author", Encode.string post.author)
      , ("text", Encode.string post.text)
      ]
