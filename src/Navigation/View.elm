module Navigation.View exposing (..)


import Html exposing (div, text, a, span)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, href, id)
import Html.CssHelpers


import Navigation.NavigationCss as NavigationCss


import Navigation.Messages exposing (..)


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
    
    menuItem =
      case isSelected of
        True -> 
          span [ id viewId
               , class'
               ]
               [ text label ]
        _ ->
          a [ id viewId
            , href "javascript://"
            , onClick message
            , class'
            ]
            [ text label ]


    class' =
      case isSelected of
        True -> class [NavigationCss.NavItem, NavigationCss.NavItemSelected]
        _ -> class[NavigationCss.NavItem]
         
  in
    menuItem
