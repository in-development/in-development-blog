module Header.View exposing (..)


import Html exposing (header, text, h1, Attribute)
import Html.Attributes exposing (style)


import Header.Messages exposing (..)


headerStyle : Attribute Msg
headerStyle =
  style [ ("backgroundColor", "#000000")
        , ("color", "#FFFFFF")
        , ("padding", "1em")
        ]


titleStyle : Attribute Msg
titleStyle =
  style [ ("margin", "0") ]


headerView : Html.Html Msg
headerView =
  header [ headerStyle ]
         [ h1 [ titleStyle ]
              [ text "In development" ]
         ]
