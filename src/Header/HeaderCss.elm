module Header.HeaderCss exposing (..)


import Css exposing (..)
import Css.Namespace exposing (namespace)


type CssClasses
    = NavBar
    | Header
    | Title


css =
  (stylesheet << namespace "header")
  [ (.) NavBar
      [ marginTop (em 0.3)
      ]
  , (.) Header
      [
        backgroundColor (hex "000000")
      , color (hex "FFFFFF")
      , paddingTop (em 1)
      , paddingRight (em 1)
      , paddingBottom (em 0.4)
      , paddingLeft (em 1)
      ]
  , (.) Title
      [ margin zero
      ]
  ]
