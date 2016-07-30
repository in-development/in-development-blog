module Post.New.Commands exposing (..)


import Post.Models exposing (Posts)
import Post.Show.Models exposing (Post)
import Post.New.Messages exposing (..)


import Http
import Task


import Json.Encode as Encode
import Json.Decode as Json exposing ((:=))


import Base64


addPost : Posts -> Post -> Cmd Post.New.Messages.Msg
addPost posts post =
  let
    textBase64 =
      case (Base64.encode post.text) of
        Ok text -> text
        otherwise -> post.text

    newPosts =
      List.append posts [{ post | text = textBase64 }]

    postsEncoder =
      List.map (\post -> postEncoder post) newPosts
    
    body = 
        Encode.list postsEncoder
        |> Encode.encode 0
        |> Http.string

    request =
      { verb = "PUT"
      , headers = [("Content-type", "application/json")]
      , url = url
      , body = body
      }

    url =
      "https://in-development-3.firebaseio.com/blog/posts.json"
  in
    Http.fromJson (Json.list decodePost) (Http.send Http.defaultSettings request)
      |> Task.perform AddPostFail AddPostSucceed


postEncoder : Post -> Encode.Value
postEncoder post = 
  Encode.object
      [ ("id", Encode.int post.id)
      , ("author", Encode.string post.author)
      , ("text", Encode.string post.text)
      ]

decodePost : Json.Decoder Post
decodePost =
  Json.object3
    Post
    ("id" := Json.int)
    ("author" := Json.string)
    ("text" := Json.string)
