module Post.Show.View exposing (..)


import Html exposing (div, text, a)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, class, href, id)
import Markdown


import Post.Show.Models exposing (Post)
import Post.Show.Messages exposing (..)


import Base64


postView : Post -> Html.Html Msg
postView post =
  let
    postId = "posts-" ++ (toString post.id)

    postTextStr =
      case (Base64.decode post.text) of
        Ok text -> text
        Err _ -> ""

  in
    a [ id postId
      , href "javascript://"
      , onClick (ShowPost post)
      , style [("text-decoration", "none"), ("color", "#000000")]
      ]
      [
        div [ style [("border", "solid 1px #000000"), ("width", "70%"), ("left", "10%"), ("position", "relative"), ("float", "left"), ("margin-bottom", "0.5em")] ]
            [ div [ style [("margin", "0.5em 0 0 0.5em")]]
                  [
                    postText postTextStr
                  ]
            , div [style [("text-align", "right"), ("margin", "0.5em 0.5em 0.5em 0"), ("font-size", "0.8em")]]
                  [ text post.author ]
            ]
      ]


postText : String -> Html.Html Msg
postText text =
  Markdown.toHtml [class "content hlsj"] text
