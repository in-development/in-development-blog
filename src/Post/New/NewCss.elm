module Post.New.NewCss exposing (..)


import Css exposing (..)
import Css.Namespace exposing (namespace)


type CssClasses
    = Container
    | Label
    | AuthorInput
    | TextInput
    | Button


css =
  (stylesheet << namespace "post-new")
  [ (.) Container
      [ margin (em 1)
      ]
  , (.) Label
      [ display block
      , property "clear" "right"
      ]
  , (.) AuthorInput
      [ width (pct 30)
      ]
  , (.) TextInput
      [ width (pct 100)
      , height (pct 40)
      , minHeight (px 400)
      ]
  , (.) Button
      [ position relative
      , float right
      , width (pct 10)
      , height (pct 10)
      , minHeight (px 30)
      , fontSize (em 1)
      , cursor pointer
      ]
  ]
