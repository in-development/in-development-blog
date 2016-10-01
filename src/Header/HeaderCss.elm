module Header.HeaderCss exposing (..)


import Css exposing (..)
import Css.Namespace exposing (namespace)


type CssClasses
    = NavBar
    | Header
    | Title


css =
  (stylesheet << namespace "header-navigation")
  [ (.) NavBar
      [ marginTop (em 0.6)
      ]
  , (.) Header
      [
        backgroundColor (rgba 247 247 247 0.5)
      , color (hex "000000")
      , paddingTop (em 1)
      ]
  , (.) Title
      [ margin zero
      , marginLeft (em 0.4)
      ]
  ]
