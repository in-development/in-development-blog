module Post.Show.PostCss exposing (..)


import Css exposing (..)
import Css.Elements exposing (h1, p)
import Css.Namespace exposing (namespace)


type CssClasses
    = Container
    | Link
    | Summary
    | Body
    | Author
    | AuthorLink
    | AuthorList
    | AuthorItem
    | AuthorItemLink
    | SimpleAuthor
    | SimpleAuthorLink
    | LineBreak


css =
  (stylesheet << namespace "post")
  [ (.) Container
      [ width (pct 70)
      , left (pct 15)
      , position relative
      , float left
      , marginBottom (em 0.5)
      ]
  , (.) Link
      [ textDecoration none
      , color (hex "000000")
      ]
  , (.) Summary
      [ width (pct 70)
      , left (pct 15)
      , position relative
      , float left
      , marginBottom (em 0.5)
      ]
  , (.) Body
      [ margin4 (em 0.5) (em 0) (em 0) (em 0.5)
      , fontFamilies ["Helvetica Neue", "Helvetica", "Arial", "sans-serif"]
      , textRendering optimizeLegibility
      , descendants
          [ h1
              [ width (pct 100)
              , textAlign center
              , marginBottom (em 1)
              ]
          , p
              [ lineHeight (em 1.7)
              , color (hex "666")
              , fontWeight (int 300)
              , letterSpacing (px 0.4)
              ]
          ]
      ]
  , (.) Author
      [ textAlign center
      , marginBottom (em 3)
      ]
  , (.) AuthorLink
      [ textDecoration none
      , color (hex "000000")
      , fontSize (em 1.5)
      {-, bold 300-}
      ]
  , (.) AuthorList
      [ marginLeft (em -2.5)
      ]
  , (.) AuthorItem
      [ display inline
      , padding (em 0.5)
      ]
  , (.) AuthorItemLink
      [ textDecoration none
      ]
  , (.) SimpleAuthor
      [ textAlign right
      , margin4 (em 0.5) (em 0.5) (em 0.5) (em 0)
      , fontSize (em 0.8)
      ]
  , (.) SimpleAuthorLink
      [ textDecoration none
      , color (hex "000")
      ]
  , (.) LineBreak
      [ height (px 2)
      , borderTopStyle dashed
      , borderTopWidth (px 1)
      , borderTopColor (hex "000000")
      , borderBottomStyle dashed
      , borderBottomWidth (px 1)
      , borderBottomColor (hex "000000")
      , marginTop (em 4.5)
      ]
  ]
