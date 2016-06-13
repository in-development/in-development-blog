import Html exposing (div, text)
import Html.App as Html
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram { model = "This is the Blog's start app", view = view, update = update }

type Msg = NoOp

update msg model =
  case msg of
    NoOp ->
      model

view model =
  div []
      [ text model ]