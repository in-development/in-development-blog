module Post.Show.View exposing (..)


import Html exposing (div, text, a, hr)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, class, href, id)
import Markdown
import String exposing (..)


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
    div [ style [("width", "70%"), ("left", "10%"), ("position", "relative"), ("float", "left"), ("margin-bottom", "0.5em")] ]
        [ div [ style [("margin", "0.5em 0 0 0.5em")]]
              [
                postText postTextStr True
              ]
        , div [style [("text-align", "right"), ("margin", "0.5em 0.5em 0.5em 0"), ("font-size", "0.8em")]]
              [ text post.author ]
        ]


postSummary : Post -> Html.Html Msg
postSummary post =
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
        div [ style [("width", "70%"), ("left", "10%"), ("position", "relative"), ("float", "left"), ("margin-bottom", "0.5em")] ]
            [ div [ style [("margin", "0.5em 0 0 0.5em")]]
                  [
                    postText postTextStr False
                  ]
            , div [style [("text-align", "right"), ("margin", "0.5em 0.5em 0.5em 0"), ("font-size", "0.8em")]]
                  [ text post.author ]
            , hr [ style [ ("border", "0")
                         , ("height", "2px")
                         , ("border-top", "1px dashed #000000")
                         , ("border-bottom", "1px dashed black")
                         , ("margin-top", "4.5em")
                         ]
                 ]
                 [ ]
            ]
      ]


postText : String -> Bool -> Html.Html Msg
postText text complete =
  let
    newText =
      if complete then
        Just (join "\n" (List.map (\line -> if line == "-----<<<<<continue<<<<<-----" then "" else line) (lines text)))
      else
        List.head (split "-----<<<<<continue<<<<<-----" text)

  in
    case newText of
      Just text' -> Markdown.toHtml [class "content hlsj"] text'
      Nothing -> Markdown.toHtml [class "content hlsj"] ""
