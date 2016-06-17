module View exposing (..)


import Html exposing (div, text, h1)
import Html.Attributes exposing (style, class)
import Markdown


import Models exposing (..)
import Actions exposing (..)


view : AppModel -> Html.Html Msg
view model =
  let
    postsVW =
      case model.posts of
        [] -> 
          div []
              [ text "Loading...." ]
        _ ->
          postsView model.posts

  in
    div []
        [ h1  [ style [("margin-left", "1em")] ]
              [ text model.title ]
        , div [ style [("margin-top", "1em")] ]
              [ postsVW ]
        ]


postsView : Posts -> Html.Html Msg
postsView posts =
  let
    postList = List.map postView posts

  in
    div []
        postList


postView : Post -> Html.Html Msg
postView post =
  div [ style [("border", "solid 1px"), ("width", "70%"), ("left", "10%"), ("position", "relative"), ("float", "left"), ("margin-bottom", "0.5em")] ]
      [ div [ style [("margin", "0.5em 0 0 0.5em")]]
            [
              postText post.text
            ]
      , div [style [("text-align", "right"), ("margin", "0.5em 0.5em 0.5em 0"), ("font-size", "0.8em")]]
            [ text post.author ]
      ]


postText : String -> Html.Html Msg
postText text =
  Markdown.toHtml [class "content hlsj"] text