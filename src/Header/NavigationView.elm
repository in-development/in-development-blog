module Header.NavigationView exposing (..)


import Html exposing (div, text, a, span)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, href, id)
import Html.CssHelpers

import Header.NavigationCss as NavigationCss

import Header.Messages exposing (..)
import Routing.Models exposing (..)


{ class } =
  Html.CssHelpers.withNamespace "navigation"

menuView : Route ->  Html.Html Msg
menuView route =
  let

    isPostsSelected =
      route == PostsRoute

    isAdminSelected =
      route == AdminRoute

  in
    div [ class [NavigationCss.Container] ]
        [ div []
              [ menuLink ShowPosts "btnPosts" "Posts" isPostsSelected
              , menuLink ShowAdmin "btnAdmin" "Admin" isAdminSelected
              ]
        ]


menuLink : Msg -> String -> String -> Bool -> Html.Html Msg
menuLink message viewId label isSelected =
  let
    selectedMenuItem =
      span [ id viewId
           , class [ NavigationCss.NavItem, NavigationCss.NavItemSelected ]
           ]
           [ text label ]
    menuItem =
      a [ id viewId
        , href "javascript://"
        , onClick message
        , class [ NavigationCss.NavItem ]
        ]
        [ text label ]
  in
    if isSelected then
      selectedMenuItem
    else
      menuItem
