module Navigation.NavigationCss exposing (..)


import Css exposing (..)
import Css.Namespace exposing (namespace)


type CssClasses
    = Container
    | NavItem


css =
  (stylesheet << namespace "navigation")
  [ (.) Container
      [ backgroundColor (hex "000000")
      , color (hex "FFFFFF")
      ]
  , (.) NavItem
      [ textDecoration none
      , color (hex "FFFFFF")
      ]
  ]
