module Header.View exposing (..)


import Html exposing (header, text)
import Html.Attributes exposing (style)


import Header.Messages exposing (..)


headerView : Html.Html Msg
headerView =
  header [ style [ ("backgroundColor", "#000000"), ("color", "#F4F00F") ] ]
         [ text "Header" ]
