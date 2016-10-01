module MainCss exposing (css)


import Css exposing (..)
import Css.Elements exposing (body)
import Css.Namespace exposing (namespace)


css =
    (stylesheet << namespace "dreamwriter")
        [ body
            [ margin zero ]
        ]
