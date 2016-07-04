module Navigation.View exposing (..)


import Html exposing (div, text, a)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, href, id)


import Navigation.Messages exposing (..)


menuView : Html.Html Msg
menuView =
    div [ style [("background-color", "#000000"), ("color", "#FFFFFF")] ]
        [ div []
              [ menuLink ShowPosts "btnPosts" "Posts"
              , text " | "
              , menuLink ShowAdmin "btnAdmin" "Admin"
              ]
        ]


menuLink : Msg -> String -> String -> Html.Html Msg
menuLink message viewId label =
    a [ id viewId
      , href "javascript://"
      , onClick message
      , style [("text-decoration", "none"), ("color", "#FFFFFF")]
      ]
      [ text label ]