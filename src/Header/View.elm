module Header.View exposing (..)


import Html exposing (header, text, h1, Attribute, div)
import Html.CssHelpers


import Header.Messages exposing (..)


import Header.NavigationView exposing (menuView)


import Header.HeaderCss as HeaderCss


import Routing.Models exposing (..)


{ class } =
    Html.CssHelpers.withNamespace "header"


headerView : Route -> Html.Html Msg
headerView route =
  header [ class [HeaderCss.Header] ]
         [ h1 [ class [HeaderCss.Title] ]
              [ text "In development" ]
         , div [ class [HeaderCss.NavBar] ]
               [ menuView route ]
         ]
