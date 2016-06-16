module View exposing (..)


import Html exposing (div, text, h1)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


import Models exposing (..)
import Actions exposing (..)


view : AppModel -> Html.Html Msg
view model =
  div []
      [ h1  [ style [("margin-left", "1em")] ]
            [ text model.title ]
      , div [ style [("margin-top", "1em")] ]
            [ posts model.posts ]
      ]


posts : Posts -> Html.Html Msg
posts posts =
  let
    postRow post = div [ style [("border", "solid 1px"), ("width", "70%"), ("left", "10%"), ("position", "relative"), ("float", "left"), ("margin-bottom", "0.5em")] ]
                       [ div [ style [("margin", "0.5em 0 0 0.5em")]]
                             [ text post.text ]
                       , div [style [("text-align", "right"), ("margin", "0.5em 0.5em 0.5em 0"), ("font-size", "0.8em")]]
                             [ text post.author ]
                       ]

    postList = List.map postRow posts
  in
    div []
        postList