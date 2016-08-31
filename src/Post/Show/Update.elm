module Post.Show.Update exposing (..)


import Navigation


import Post.Show.Messages exposing (..)
import Post.Show.Models exposing (Post)


update : Msg -> Post -> (Post, Cmd Msg)
update msg model =
  case msg of
    ShowPost post ->
      let
        path = "#/post/" ++ (toString post.id)

      in
        ( model, Navigation.newUrl path )
