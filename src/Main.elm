import Html.App as Html


import Models exposing (..)
import Actions exposing (..)
import Update exposing (..)
import View exposing (..)


main =
  Html.beginnerProgram { model = initialAppModel, view = view, update = update }