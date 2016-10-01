module Header.View exposing (..)


import Html exposing (header, text, h1, Attribute, div, a, span)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, href, id)
import Html.App
import Html.CssHelpers


import Header.Messages exposing (..)


import Header.HeaderCss as HeaderCss
import Header.NavigationCss as NavigationCss


import Routing.Models exposing (..)


{ class } = 
  Html.CssHelpers.withNamespace "header-navigation"


headerView : Route -> Html.Html Msg
headerView route =
  header [ class [HeaderCss.Header] ]
         [ h1 [ class [HeaderCss.Title] ]
              [ text "In development" ]
         , div [ class [HeaderCss.NavBar] ]
               [ menuView route ]
         ]


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
  case isSelected of
    True ->
      span [ id viewId
           , class [NavigationCss.NavItem, NavigationCss.NavItemSelected]
           ]
           [ text label ]
    _ ->
      a [ id viewId
        , href "javascript://"
        , onClick message
        , class [NavigationCss.NavItem]
        ]
        [ text label ]
