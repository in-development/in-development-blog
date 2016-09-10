module Navigation.View exposing (..)


import Html exposing (div, text, a)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, href, id)
import Html.CssHelpers


import Navigation.NavigationCss as NavigationCss


import Navigation.Messages exposing (..)


{ class } =
  Html.CssHelpers.withNamespace "navigation"

menuView : Html.Html Msg
menuView =
    div [ class [NavigationCss.Container] ]
        [ div []
              [ menuLink ShowPosts "btnPosts" "Posts"
              , menuLink ShowAdmin "btnAdmin" "Admin"
              ]
        ]


menuLink : Msg -> String -> String -> Html.Html Msg
menuLink message viewId label =
    a [ id viewId
      , href "javascript://"
      , onClick message
      , class [NavigationCss.NavItem]
      ]
      [ text label ]
