module Footer.FooterCss exposing (..)


import Css exposing (..)
import Css.Namespace exposing (namespace)


type CssClasses
    = Main


css =
  (stylesheet << namespace "footer")
  [ (.) Main
      [ borderTop (px 1)
      , borderTopStyle solid
      , borderTopColor (hex "ededed")
      , paddingTop (px 20)
      , marginTop (px 40)
      , fontSize (em 1.1)
      , color (hex "aaa")
      , fontWeight (int 300)
      , textAlign center
      , position relative
      , width (pct 100)
      , (before) [ display block
                  {-, contentBox "auto"-}
                  , width (px 7)
                  , height (px 7)
                  , border (px 1)
                  , borderStyle solid
                  , borderColor (hex "ededed")
                  , position absolute
                  , top (px -5)
                  , left (pct 50)
                  , marginLeft (px -5)
                  , backgroundColor (hex "fff")
                  , borderRadius (px 3)
                  ]
      ]
  ]
