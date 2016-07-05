module Posts.List.View exposing (..)


import Html exposing (div, text, h1, a)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, class, href, id)
import Markdown


import Posts.Models exposing (Post)


import Posts.List.Models exposing (Posts)
import Posts.List.Messages exposing (..)


postsView : Posts -> Html.Html Msg
postsView posts =
  let
    postList = List.map postView posts

    postVW =
      case posts of
        [] -> 
          div []
              [ text "Loading...." ]
        _ ->
          div []
              postList

  in
    div []
        [postVW]


postView : Post -> Html.Html Msg
postView post =
  let
    postId = "posts-" ++ (toString post.id)

  in
    a [ id postId
      , href "javascript://"
      , onClick (ShowPost post.id)
      , style [("text-decoration", "none"), ("color", "#000000")]
      ]
      [
        div [ style [("border", "solid 1px #000000"), ("width", "70%"), ("left", "10%"), ("position", "relative"), ("float", "left"), ("margin-bottom", "0.5em")] ]
            [ div [ style [("margin", "0.5em 0 0 0.5em")]]
                  [
                    postText post.text
                  ]
            , div [style [("text-align", "right"), ("margin", "0.5em 0.5em 0.5em 0"), ("font-size", "0.8em")]]
                  [ text post.author ]
            ]
      ]


postText : String -> Html.Html Msg
postText text =
  Markdown.toHtml [class "content hlsj"] text