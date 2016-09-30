module Header.NavigationCss exposing (..)


import Css exposing (..)
import Css.Namespace exposing (namespace)


type CssClasses
    = Container
    | NavItem
    | NavItemSelected


css =
  (stylesheet << namespace "navigation")
  [ (.) Container
      [ backgroundColor (rgba 210 220 230 0.2)
      , padding (em 0.6)
      , color (hex "FFFFFF")
      ]
  , (.) NavItem
      [ textDecoration none
      , fontSize (em 1)
      , padding (em 0.5)
      , hover
          [ backgroundColor (rgba 210 220 230 1)
          , borderColor (hex "000000")
          , borderStyle solid
          , borderLeftWidth (px 1)
          , borderRightWidth (px 1)
          , borderTopWidth (px 0)
          , borderBottomWidth (px 0)
          , color (hex "FFFFFF")
          ]
      , color (hex "000000")
      ]
  , (.) NavItemSelected
      [ backgroundColor (rgba 210 220 230 1)
      , borderColor (hex "000000")
      , borderStyle solid
      , borderLeftWidth (px 1)
      , borderRightWidth (px 1)
      , borderTopWidth (px 0)
      , borderBottomWidth (px 0)
      , color (hex "FFFFFF")
      ]
  ]
