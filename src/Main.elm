import Html.App as Html


import Routing.Models exposing (Route, Location)
import Routing.Config exposing (routerConfig)
import Routing.Utils exposing (urlParser, program)


import Models exposing (..)
import Messages exposing (..)
import Update exposing (..)
import View exposing (..)
import Commands exposing (..)
import Subscriptions exposing (..)


urlUpdate : ( Route, Location ) -> AppModel -> ( AppModel, Cmd Msg )
urlUpdate ( route, location ) model =
    ( { model | route = route, location = location }, Cmd.none )


init : ( Route, Location ) -> ( AppModel, Cmd Msg )
init ( route, location ) =
    ( newAppModel route location, getPosts )


main =
    program urlParser
    { init = init
    , view = view
    , update = update
    , urlUpdate = urlUpdate
    , subscriptions = subscriptions
    }